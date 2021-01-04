package jp.co.shu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.co.shu.model.MemberModel;

@Controller
@RequestMapping("regist")
@SessionAttributes({"loginModel", "memberModel"})
public class RegistController {

	@ModelAttribute("memberModel")
	public MemberModel setUpMemberModel() {
		return new MemberModel();
	}

	@RequestMapping(method=RequestMethod.GET)
	public String toRegist() {
		return "registForm";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String toConfirm(@Validated @ModelAttribute MemberModel mModel, BindingResult result) {
		if(result.hasErrors()) {
			return "registForm";
		}else {
			return "redirect://confirm";
		}
	}
}
