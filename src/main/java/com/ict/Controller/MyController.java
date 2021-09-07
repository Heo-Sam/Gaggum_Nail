package com.ict.Controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.Service.MyService;
import com.ict.VO.BoardVO;
import com.ict.VO.MemberVO;

@Controller
public class MyController {
	@Autowired 
	private MyService myService;
	
	@RequestMapping("main.do")
	public ModelAndView mainCommand() {
		try {
			return new ModelAndView("main");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("login.do")
	public ModelAndView loginCommand() {
		try {
			return new ModelAndView("login");
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "login_ok.do", method = RequestMethod.POST)
	public ModelAndView loginOKCommand(@ModelAttribute("mvo")MemberVO mvo, HttpSession session) {
		try {
			MemberVO mvo2 = myService.selectLogIn(mvo);;
			if (mvo2 != null) { // 로그인 성공
				session.setAttribute("mvo", mvo2);
				session.setAttribute("login", "ok");
				
				// 관리자, 일반유저 검사
				if (mvo.getId().equals("admin") && mvo.getPw().equals("admin")) {
					session.setAttribute("admin", "ok");
					// return new ModelAndView("admin_page");
					return new ModelAndView("redirect:memberList_view.do");
				}
			} else { // 로그인 실패
				return new ModelAndView("login_error");		
			}
			// 일반회원
			return new ModelAndView("redirect:main.do");
		} catch (Exception e) {
			System.out.println(e);
			return new ModelAndView("error");
		}
	}
	
	@RequestMapping("adminPage.do")
	public ModelAndView adminPageCommand() {
		try {
			return new ModelAndView("admin_page");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logoutCommand(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:main.do");
	}
	
	@RequestMapping("join.do")
	public ModelAndView joinCommand() {
		try {
			return new ModelAndView("join");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "join_ok.do", method = RequestMethod.POST)
	public ModelAndView joinOKCommand(MemberVO mvo) {
		try {
			ModelAndView mv = new ModelAndView();
			int result = myService.insertNewMember(mvo);
			
			mv.addObject("mvo", mvo);
			
			return new ModelAndView("join_ok");	
		} catch (Exception e) {
			return new ModelAndView("error");
		}
	}
	
	@RequestMapping("memberList_view.do")
	public ModelAndView memberListViewCommand() {
		try {
			return new ModelAndView("admin_page");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "memberList.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<MemberVO> memberListCommand(HttpSession session) {
		try {
			List<MemberVO> memberList = myService.selectMemberList();
			return memberList;
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "deleteMember.do", produces = "text/html; charset=utf8")
	@ResponseBody
	public String deleteMemberCommand(MemberVO mvo) {
		try {
			int result = myService.deleteMember(mvo);
			return String.valueOf(result);
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	
	@RequestMapping("find_id.do")
	public ModelAndView findIDCommand() {
		try {
			return new ModelAndView("find_id");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("intro.do")
	public ModelAndView introCommand() {
		try {
			return new ModelAndView("intro");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("service.do")
	public ModelAndView serviceCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("service");
			String category = request.getParameter("category");
			
			// 첫 번째 들어오는 파라미터는 null, 첫 화면은 category = nail
			if (category == null) {
				category = "nail";
			}
			List<BoardVO> list = myService.selectServiceList(category);
			mv.addObject("list", list);
			
			return mv;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	@RequestMapping("upload.do")
	public ModelAndView uploadCommand() {
		try {
			return new ModelAndView("upload");			
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "upload_ok.do", method = RequestMethod.POST)
	public ModelAndView uploadCommand(BoardVO bvo, HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("redirect:service.do?category="+bvo.getCategory());
			String path = request.getSession().getServletContext().getRealPath("/resources/service_images");
			
			MultipartFile file = bvo.getF_image();
			if(file != null && !file.equals("")) {
				bvo.setS_images(file.getOriginalFilename());			
			}
			int result = myService.insertNewService(bvo);
			if (result > 0) {
				byte[] in = file.getBytes();
				File out = new File(path, bvo.getS_images());
				FileCopyUtils.copy(in, out);
				
			}
			System.out.println(result);
			return mv;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	@RequestMapping("reserve.do")
	public ModelAndView reserveCommand() {
		return new ModelAndView("reserve"); 
	}
	@RequestMapping("reserve_form.do")
	public ModelAndView reserveFormCommand() {
		return new ModelAndView("reserve_form");
	}
	
	
}