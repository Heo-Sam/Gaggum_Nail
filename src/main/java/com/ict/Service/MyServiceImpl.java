package com.ict.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.DAO.MyDAO;
import com.ict.VO.BoardVO;
import com.ict.VO.MemberVO;
import com.ict.VO.ReserveVO;

@Service
public class MyServiceImpl implements MyService {
	@Autowired
	private MyDAO myDAO;
	
	@Override
	public MemberVO selectLogIn(MemberVO mvo) throws Exception {
		return myDAO.selectLogIn(mvo);
	}

	@Override
	public List<MemberVO> selectMemberList() throws Exception {
		return myDAO.selectMemberList();
	}

	@Override
	public List<ReserveVO> selectReserveList(String reserve_date) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectMemberShip(String m_idx) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMembership(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertNewMember(MemberVO mvo) throws Exception {
		return myDAO.insertNewMember(mvo);
	}

	@Override
	public int updateMember(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(MemberVO mvo) throws Exception {
		return myDAO.deleteMember(mvo);
	}

	@Override
	public int insertNewReserve(ReserveVO rvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReserve(ReserveVO rvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReserve(String r_idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardVO> selectServiceList(String category) throws Exception {
		return myDAO.selectServiceList(category);
	}
	
	@Override
	public int selectCount(BoardVO bvo) throws Exception {
		return myDAO.selectCount(bvo);
	}

	@Override
	public int insertNewService(BoardVO bvo) throws Exception {
		return myDAO.insertNewService(bvo);
	}

	@Override
	public int updateService(BoardVO bvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteService(String b_idx) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
