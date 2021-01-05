package jp.co.shu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("confirm")
@SessionAttributes({"loginModel", "memberModel"})
public class confirmController {

	@RequestMapping(method=RequestMethod.GET)
	public String toConfirm(Model model) {
		model.addAttribute("message", "上記で登録します。");
		return "confirmForm";
	}

	@RequestMapping(method=RequestMethod.POST, params="back")
	public String toRefist() {
		return "redirect://regist";
	}

	@RequestMapping(method=RequestMethod.POST, params="forward")
	public String forFinish() {
		return "forward://finish";
	}
}
