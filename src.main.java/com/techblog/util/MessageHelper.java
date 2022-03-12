package com.techblog.util;

public class MessageHelper {

	public static void setMessage(Message object, String message, String type, String className) {
			
		object.setContent(message);
		object.setType(type);
		object.setCssClass(className);			
		
	}
	
}
