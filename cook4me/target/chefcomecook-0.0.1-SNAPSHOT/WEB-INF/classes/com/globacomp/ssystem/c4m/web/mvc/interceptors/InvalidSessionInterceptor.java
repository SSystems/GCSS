package com.globacomp.ssystem.c4m.web.mvc.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.globacomp.ssystem.data.model.User;

public class InvalidSessionInterceptor extends HandlerInterceptorAdapter {

	public InvalidSessionInterceptor() {
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		String contextPath = request.getContextPath();
		String requestURI = request.getRequestURI();
		if ("".equalsIgnoreCase(requestURI)
				|| "/mps/login/".equalsIgnoreCase(requestURI)
				|| "/mps/logout/init.do".equalsIgnoreCase(requestURI)
				|| "/mps/home/init.do".equalsIgnoreCase(requestURI)
				|| "/mps/mlogin/handleLogin.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTask.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTaskDetailVerify.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTaskList.do".equalsIgnoreCase(requestURI)
				|| "/mps/mlogin/handleLogin.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTask/TaskList.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTask/taskeDetail.do".equalsIgnoreCase(requestURI)
				|| "/mps/mTask/TaskDetailVerify.do"
						.equalsIgnoreCase(requestURI)
				|| "/mps/mwealth/summary.do".equalsIgnoreCase(requestURI)
				|| "/mwealth/DematEquityListSummary.do"
						.equalsIgnoreCase(requestURI)
				|| "/mwealth/equityDetailSummary.do"
						.equalsIgnoreCase(requestURI)
				|| requestURI.startsWith("/mps/mwealth/")
				|| requestURI.startsWith("/mps/mKYC")
				|| requestURI.startsWith("/mps/mLead")
				

		) {

			return true;

		}

		
		HttpSession session = request.getSession(false);
		if (session == null || !request.isRequestedSessionIdValid()) {
			session = request.getSession(true);
			response.sendRedirect(request.getContextPath()+"/logout/init.do?cmd=sessionExpired" );
			return false;
		}

		User user = null;
		if (user == null) {
			response.sendRedirect(request.getContextPath());
			return false;
		}

		String loginId = user.getId();
		if (StringUtils.isBlank(loginId)) {
			response.sendRedirect(request.getContextPath());
			return false;
		}

		return super.preHandle(request, response, handler);
	}
}
