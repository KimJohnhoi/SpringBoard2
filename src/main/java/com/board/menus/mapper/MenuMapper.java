package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.board.menus.domain.MenuDTO;

@Mapper
public interface MenuMapper {

	void insertMenu(MenuDTO menuDTO);
	
	List<MenuDTO> getMenuList();
	
}