package main.net.yukitteru.resume.service;

/**
 * 
 * @author devstudy
 *
 */
public class NameService {

	public static NameService getInstance(){
		return new NameService();
	}

	public String convertName(String name) {
		return name.toUpperCase();
	}
}
