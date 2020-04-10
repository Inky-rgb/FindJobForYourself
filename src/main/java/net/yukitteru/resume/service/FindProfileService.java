package net.yukitteru.resume.service;

import net.yukitteru.resume.entity.Profile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 *
 * @author Yukitteru
 */
public interface FindProfileService {

    Profile findByUid(String uid);

    Page<Profile>findAll(Pageable pageable);





}