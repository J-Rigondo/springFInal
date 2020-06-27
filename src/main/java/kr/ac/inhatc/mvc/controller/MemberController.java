package kr.ac.inhatc.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.inhatc.mvc.dto.MemberDto;
import kr.ac.inhatc.mvc.service.MemberService;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value= {"/member/login"}, method=RequestMethod.GET)
	public String memberLogin() {
		return "auth/loginMember";
	}
	
	@RequestMapping(value= {"/member/login"}, method=RequestMethod.POST)
	public String memberLoginPost(Model model, @RequestParam("name") String name,
@RequestParam("password") String password, HttpSession session) {
		
		MemberDto md = new MemberDto();
		md.setId(name);
		md.setPassword(password);
		
		int result = memberService.memberLoginPost(md);
		System.out.println(name + password);
		System.out.println(result);
		if(result ==0) {
			model.addAttribute("error",0);
			return "redirect:/member/login";
		}else {
			session.setAttribute("sessionId", name);
			model.addAttribute("msg",1);
			return "auth/resultMember";
		}
		
		
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String memberLogout(Model model, HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/member/register", method = RequestMethod.GET)
	public String memberRegister() {
		return "auth/registMember";
	}
	
	@RequestMapping(value = "/member/register", method = RequestMethod.POST)
	public String memberRegisterPost(Model model, MemberDto memberDto) {
		//아이디 유효성
		int idCheck = memberService.idCheck(memberDto.getId());
		if(idCheck == 1) {
			model.addAttribute("msg", 2);
			return "auth/resultMember";
		}
		
		//비밀번호 유효성
		if(!(memberDto.getPassword().equals(memberDto.getPasswordConfirm()))) {
			model.addAttribute("msg", 3);
			return "auth/resultMember";
		}
		
		//생년원일 설정
		String birth = memberDto.getBirthyy() + "/" + memberDto.getBirthmm() + "/" + "0" + memberDto.getBirthdd() ;
		memberDto.setBirth(birth);
		
		//메일 설정
		String mail = memberDto.getMail1() + "@" + memberDto.getMail2();
		memberDto.setMail(mail);		
		
		memberService.memberRegisterPost(memberDto);
		
		model.addAttribute("msg", 4);
		return "auth/resultMember";
	}
}
