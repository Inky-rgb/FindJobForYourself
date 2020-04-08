package net.yukitteru.resume.service;

import net.yukitteru.resume.entity.Profile;

/**
 *
 * @author Yukitteru
 */
public interface FindProfileService {

    Profile findByUid(String uid);
}