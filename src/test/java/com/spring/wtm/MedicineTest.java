package com.spring.wtm;

import org.apache.ibatis.session.SqlSession;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.spring.wtm.model.Medicine;

import lombok.extern.slf4j.Slf4j;

/** Lombok의 Log4j 객체 */
//import lombok.extern.slf4j.Slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
//import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
//import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
//import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class MedicineTest {
	@Autowired
	SqlSession sqlSession;
	
	/** 단일행 조회 테스트 */
	public void testA() {
		Medicine med = new Medicine();
		
		med.setMedId(1);
		med.setItemSeq(00001);
		med.setItemName("수인만병통치약");
		med.setClassNo("식약처분류");
		med.setEtcOtcName("전문/일반 구분");
		med.setEntpName("제조업체");
		med.setChart("성상");
		med.setDrungShape("모양");
		med.setColor("약색상");
		med.setLine("분할선");
		med.setFormCode("제형");
		med.setDrugImg("약이미지");
		med.setMaterial("성분정보");
		med.setStorageMethod("저장방법");
		med.setEffectData("효능효과");
		med.setUsageData("복용방법");
		med.setWarningData("주의사항");
		
		sqlSession.selectOne("MedicineMapper.selectItem", med);
		
		System.out.println("생선된 PK:" + med.getMedId());
		
		Medicine output = sqlSession.selectOne("MedicineMapper.selectItem", med );
		
		System.out.println(output.toString());		
	}

}
