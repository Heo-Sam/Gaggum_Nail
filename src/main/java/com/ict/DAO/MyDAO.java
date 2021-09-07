package com.ict.DAO;

import java.util.List;

import com.ict.VO.BoardVO;
import com.ict.VO.MemberVO;
import com.ict.VO.ReserveVO;

public interface MyDAO {
	// 로그인
	MemberVO selectLogIn(MemberVO mvo) throws Exception;
	
	// 게시물의 수
	int selectCount(BoardVO bvo) throws Exception;
	
	// 회원리스트
	List<MemberVO> selectMemberList() throws Exception;
	// 예약리스트, 예약정보
	List<ReserveVO> selectReserveList(String reserve_date) throws Exception;
	// 멤버십 조회
	MemberVO selectMemberShip(String m_idx) throws Exception;
	// 멤버십 금액 수정
	int updateMembership(MemberVO mvo) throws Exception;
	
	// 회원가입
	int insertNewMember(MemberVO mvo) throws Exception;
	// 회원정보 수정
	int updateMember(MemberVO mvo) throws Exception;
	// 회원 정보 삭제
	int deleteMember(MemberVO mvo) throws Exception;
	
	// 예약하기
	int insertNewReserve(ReserveVO rvo) throws Exception;
	// 예약 수정
	int updateReserve(ReserveVO rvo) throws Exception;
	// 예약 삭제
	int deleteReserve(String r_idx) throws Exception;
	
	// 사진 리스트
	List<BoardVO> selectServiceList(String category) throws Exception;
	// 파일 업로드
	int insertNewService(BoardVO bvo) throws Exception;
	// 파일 수정
	int updateService(BoardVO bvo) throws Exception;
	// 파일 삭제
	int deleteService(String b_idx) throws Exception;
}
