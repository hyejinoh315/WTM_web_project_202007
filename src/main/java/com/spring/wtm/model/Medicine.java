package com.spring.wtm.model;

import lombok.Data;

@Data
public class Medicine {
	
	/** med_id = PK (not null) */
	private int medId;
	
	// 품목일련번호
	private int itemSeq;
	// 품목명
	private String itemName;
	// 식약처분류
	private String classNo;
	// 구분(전문/일반)
	private String etcOtcName;
	// 제조업체명
	private String entpName;
	// 성상
	private String chart;
	// 모양
	private String drungShape;
	// 색상
	private String color;
	// 분할선
	private String line;
	// 제형
	private String formCode;
	// 이미지(null)
	private String drugImg;
	// 성분정보
	private String material;
	// 저장정보
	private String storageMethod;
	// 효능효과
	private String effectData;
	// 용법용량
	private String usageData;
	// 주의사항
	private String warningData;
	
	
	

}
