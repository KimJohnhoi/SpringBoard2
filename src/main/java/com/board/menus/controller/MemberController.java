package com.board.menus.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.board.menus.domain.MemberDTO;
import com.board.menus.mapper.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper memMapper;
	
	@RequestMapping("/Member/List")
	public String MemberList(Model model) {
		
		List<MemberDTO> memList = memMapper.getMemList();
		
		model.addAttribute("memList", memList);
		return "member/list";
	}
	
	@RequestMapping("/Menus/AddForm")
	public String MemberAdd() {
		return "member/addmember";
	}
	
	@RequestMapping("/Menus/AddMem")
	public String MemberAddAction(MemberDTO memDTO) {
		
		memMapper.insertMem(memDTO);
		return "redirect:/Member/List";
	}
	
	@RequestMapping("/Menus/UpdateForm")
	public String MemberUpForm(MemberDTO memDTO, Model model) {
		MemberDTO member = memMapper.getMem(memDTO);
		
		model.addAttribute("upMem", member);
		return "member/update";
	}
	
	@RequestMapping("/Menus/UpdateAction")
	public String MemberUpAction(MemberDTO memDTO) {
		memMapper.updateMem(memDTO);
		return "redirect:/Member/List";
	}
	
	@RequestMapping("/Menus/Delete")
	public String MemDel(MemberDTO memDTO) {
		
		memMapper.delMem(memDTO);
		return "redirect:/Member/List";
	}
}
