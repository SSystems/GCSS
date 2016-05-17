package com.globacomp.ssystem.c4m.web.mvc.interceptors;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

public class LoginFormInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("In LoginInterceptor: In PreHandle:"+request.getRequestURI());
		Map<String, Object> inputMap= (Map<String, Object>) RequestContextUtils.getInputFlashMap(request);
		Iterator iterator = null;
		
		if(inputMap!= null && inputMap.size()>0) {
			
			iterator = inputMap.keySet().iterator();
			
			String key;
			
			while (iterator.hasNext()) {
				key = (String) iterator.next();
				System.out.println("key:"+key+" ==  Value:"+inputMap.get(key));
			}
		}
		else
			System.out.println("Map Empty");
		
		String referer = request.getHeader("Referer");
		System.out.println("Referer:"+referer);
		
		Enumeration<String> headers = request.getHeaderNames(); 
		String header = null;
		
		while (headers.hasMoreElements()){
			header = headers.nextElement();
			System.out.println("Header Name:"+header+ "__ Value:"+request.getHeader(header));
		}
		
		return super.preHandle(request, response, handler);
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("In LoginInterceptor: Post Handle: "+request.getRequestURI());
		Map<String, Object> inputMap= (Map<String, Object>) RequestContextUtils.getInputFlashMap(request);
		Iterator iterator = null;
		
		if(inputMap != null && inputMap.size()>0) {
			
			iterator = inputMap.keySet().iterator();
			
			String key;
			
			while (iterator.hasNext()) {
				key = (String) iterator.next();
				System.out.println("key:"+key+" ==  Value:"+inputMap.get(key));
			}
		}
		else
			System.out.println("Map Empty");
		
		super.postHandle(request, response, handler, modelAndView);
	}
}
