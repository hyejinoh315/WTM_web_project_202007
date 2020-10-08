/**
 * @filename		: MedicineController.java
 * @description	: 약검색 페이지 컨트롤러
 * 									medicine_search -  약검색페이지
 * 									medicine_detail - 약 검색결과 상세페이지
 * @Date			: 2020. 9. 13. 
 * @author			: 박 수 인
 */

package com.spring.wtm.controllers;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MedicineController {
	/**
	 * 약검색 페이지로 이동(medicine_search.jsp)
	 * @param model
	 * @param response
	 * @return
	 *
	 */
	@RequestMapping(value = "/medicine", method = RequestMethod.GET)
			public ModelAndView medicine_serach(Model model, HttpServletResponse response) {
				return new ModelAndView("medicine/medicine_search");			
				
			}
	/** 약검색 페이지에 대한 action페이지
	 * 약상세 페이지로 이동(medicine_detail.jsp)
	 * @param model
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/medicine/medicine_detail.do", method = RequestMethod.GET)
	public ModelAndView medicine_detail(Model model, HttpServletResponse response) {
		return new ModelAndView("medicine/medicine_detail");
		
	}
	
}
