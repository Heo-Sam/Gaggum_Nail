package com.ict.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.VO.BoardVO;
import com.ict.VO.MemberVO;
import com.ict.VO.ReserveVO;

@Repository
public class MyDAOImpl implements MyDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MemberVO selectLogIn(MemberVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("login", mvo);
	}

	@Override
	public List<MemberVO> selectMemberList() throws Exception {
		return sqlSessionTemplate.selectList("memberList");
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
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("newMember", mvo);
	}

	@Override
	public int updateMember(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(MemberVO mvo) throws Exception {
		return sqlSessionTemplate.delete("deleteMember", mvo);
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
		return sqlSessionTemplate.selectList("boardList", category);
	}
	
	@Override
	public int selectCount(BoardVO bvo) throws Exception {
		return sqlSessionTemplate.selectOne("count");
	}

	@Override
	public int insertNewService(BoardVO bvo) throws Exception {
		return sqlSessionTemplate.insert("insert_service", bvo);
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
