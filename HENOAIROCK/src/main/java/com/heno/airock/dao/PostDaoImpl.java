package com.heno.airock.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.heno.airock.dto.PostVO;

@Repository
public class PostDaoImpl implements PostDao {
	
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int updateReadCnt(PostVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int save(PostVO inVO) throws SQLException {
		return sqlSessionTemplate.insert("Post.save", inVO);
	}

	@Override
	public int delete(PostVO inVO) throws SQLException {
		return sqlSessionTemplate.delete("Post.delete", inVO);
	}

	@Override
	public int update(PostVO inVO) throws SQLException {
		return sqlSessionTemplate.update("Post.update", inVO);
	}

	@Override
	public PostVO selectOne(PostVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PostVO> select(PostVO inVO) throws SQLException {
		return sqlSessionTemplate.selectList("Post.select", inVO);
	}

}
