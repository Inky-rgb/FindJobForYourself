package net.yukitteru.resume.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.yukitteru.resume.entity.Profile;
import net.yukitteru.resume.repository.storage.ProfileRepository;
import net.yukitteru.resume.service.FindProfileService;

@Service
public class FindProfileServiceImpl implements FindProfileService {

    @Autowired
    private ProfileRepository profileRepository;


    @Override
    public Profile findByUid(String uid) {
        return profileRepository.findByUid(uid);
    }
}