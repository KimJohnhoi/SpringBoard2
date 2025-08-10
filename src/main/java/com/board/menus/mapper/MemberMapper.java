package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.board.menus.domain.MemberDTO;


@Mapper
public interface MemberMapper {

	List<MemberDTO> getMemList();

	void insertMem(MemberDTO memDTO);

	MemberDTO getMem(MemberDTO memDTO);
	
	void updateMem(MemberDTO memDTO);
	
	void delMem(MemberDTO memDTO);
}
