package kr.green.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 * 컨트롤러 어노테이션 @Contrller가 붙으면 컨트롤러로 인식
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * 서버부분을 제외한 URL이면 /이고 방식이 GET이면 home 메서드를 실행
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, String id, Integer num1, Integer num2, Integer count){
		logger.info("메인페이지 실행");
		Integer res = 0;
		if(num1 != null && num2 != null)
			res = num1 + num2;
		
		if(count == null) count = 0;
		else count++;
		
		/** 
		 * model은 화면과 관련된 정보를 저장하는 객체 
		 * model.addAttribute는 화면에 serverTime이라는 변수를 추가 하는 기능을 가진 메서드 */
		
		model.addAttribute("serverTime", "안녕하세요" );
		model.addAttribute("name", id);
		model.addAttribute("a", num1);
		model.addAttribute("b", num2);
		model.addAttribute("c", res);
		model.addAttribute("cnt", count);
		
		return "home";
		/** 
		 * 사용자에서 home.jsp를 보내준다
		 * .jsp는 자동으로 붙여진다, appServlet/servlet-context 참조
		 */
		
	}
	
}
