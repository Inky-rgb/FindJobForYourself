package net.yukitteru.resume.service.impl;

import org.apache.commons.lang.WordUtils;
import org.springframework.stereotype.Service;

import net.yukitteru.resume.service.NameService;

@Service
public class NameServiceImpl implements NameService{

	@Override
	public String convertName(String name) {
		if(name.contains("_")) {
			String[] parts = name.split("_");
			return WordUtils.capitalize(parts[0]) + " " + WordUtils.capitalize(parts[1]);
		}
		return WordUtils.capitalize(name);
	}
}
