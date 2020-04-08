package net.yukitteru.resume.service;

import net.yukitteru.resume.entity.Profile;
import net.yukitteru.resume.entity.Skill;
import net.yukitteru.resume.entity.SkillCategory;
import net.yukitteru.resume.form.SignUpForm;

import java.util.List;

/**
 * @author Yukitteru
 */
public interface EditProfileService {

    Profile createNewProfile(SignUpForm singnUpForm);

    List<Skill> listSkills(long idProfile);

    List<SkillCategory> listSkillCategories();

    void updateSkills(long idProfile, List<Skill> skills);
}
