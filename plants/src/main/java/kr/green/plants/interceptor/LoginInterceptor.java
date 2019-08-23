package kr.green.plants.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.plants.vo.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public void postHandle(
		HttpServletRequest request, 
		HttpServletResponse response, 
		Object handler,  
		ModelAndView modelAndView)
		throws Exception {
		ModelMap modelMap = modelAndView.getModelMap();
		MemberVO user = (MemberVO)modelMap.get("login");

		if(user != null) {
		HttpSession session = request.getSession();
		session.setAttribute("login", user);		/** login 에 user를 저장한다 */
		    }
		}


}
