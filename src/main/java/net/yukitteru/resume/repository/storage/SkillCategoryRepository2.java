package net.yukitteru.resume.repository.storage;

import org.springframework.data.repository.PagingAndSortingRepository;

import net.yukitteru.resume.entity.SkillCategory;

/**
 * 
 * @author Yukitteru
 */
public interface SkillCategoryRepository2 extends PagingAndSortingRepository<SkillCategory, Long> {
	
}
