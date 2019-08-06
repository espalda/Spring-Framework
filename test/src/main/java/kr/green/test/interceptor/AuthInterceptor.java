package kr.green.test.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.test.vo.MemberVO;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	//로그인한 유저들만 접근할수 있게 해주는 인터셉터 경로 설정은 servlet-context.xml 에서 설정
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		if(user == null) {
			response.sendRedirect(request.getContextPath()+ "/");
		}
		return true;
	}
}
