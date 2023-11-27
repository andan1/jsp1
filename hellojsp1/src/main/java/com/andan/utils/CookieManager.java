package com.andan.utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {
	public CookieManager() {
		
	}
	
	// 쿠키를 생성 후 응답 객체에 저장
	// 쿠키를 생성하기 위해 필요한 값 : 쿠키이름, 쿠키값, 시간
	// 사용자에게 응답하기위해 응답객체를 매개변수로 전달받는다
	
	public static void makeCookie(
			HttpServletResponse response
			, String name
			, String value
			, int time) {
		
		// 쿠키생성
		Cookie cookie = new Cookie(name, value);
		// 유지기간 설정
		cookie.setMaxAge(time);
		// 응답객체에 추가
		response.addCookie(cookie);
	}
	
	// 요청객체로부터 원하는 쿠키를 찾아서 쿠키값을 반환
	public static String readCookie(
			HttpServletRequest request
			, String name) {
		String value = "";
		// 요청객체로부터 쿠키배열을 획득
		Cookie[] cookies = request.getCookies();
		System.out.println("cookies : " + cookies);
		// 브라우저를 통해 처음 접근했을 때
		// 쿠키가 하나도 저장되어 있지 않은 경우
		if (cookies != null) {
			// 쿠키배열을 돌면서 쿠키이름이 일치하는 객체가 있는지 확인
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(name)) {
					value = cookie.getValue();
					break;
				}
			}
		}
		return value;
	}
	
	public static void deleteCookie(
			HttpServletResponse response
			, String name) {
		makeCookie(response, name, "", 0);
	}
}
