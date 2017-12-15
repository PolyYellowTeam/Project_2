/**
 * 
 */
package com.bean;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;


/**
 * @author TuanVN4
 *
 */
public class BaseClass {

	public static String getCurrentDateTime() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	
	public static String getRootUrl(HttpServletRequest request) {
		return (request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()).toString();
	}
}
