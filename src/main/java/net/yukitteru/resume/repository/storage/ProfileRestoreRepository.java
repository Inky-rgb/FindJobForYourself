package net.yukitteru.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import net.yukitteru.resume.entity.ProfileRestore;

/**
 *
 * @author Yukitteru
 */
public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {

    ProfileRestore findByToken(String token);
}