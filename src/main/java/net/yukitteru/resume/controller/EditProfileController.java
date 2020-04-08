package net.yukitteru.resume.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.yukitteru.resume.form.SkillForm;
import net.yukitteru.resume.service.EditProfileService;
import net.yukitteru.resume.util.SecurityUtil;

/**
 * @author Yukitteru
 */
@Controller
public class EditProfileController {

	@Autowired
	private EditProfileService editProfileService;


	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String getEditProfile(){
		return "edit";
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.GET)
	public String getEditSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(editProfileService.listSkills(SecurityUtil.getCurrentIdProfile())));
		return gotoSkillsJSP(model);
	}

	@RequestMapping(value = "/edit/skills", method = RequestMethod.POST)
	public String saveEditSkills(@Valid @ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
		}
		editProfileService.updateSkills(SecurityUtil.getCurrentIdProfile(), form.getItems());
			return "redirect:/aly-dutta";
	}

	private String gotoSkillsJSP(Model model){
		model.addAttribute("skillCategories", editProfileService.listSkillCategories());
		return "edit/skills";
	}
}