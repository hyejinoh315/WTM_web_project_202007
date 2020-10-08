
<%
	/**
* @filename : medicine_search.jsp
* @description : --- 약검색페이지 ---
* @author : 박수인(sooin5959@gmail.com)
*/
%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header/css 적용 -->
<%@ include file="../_inc/header.jsp"%>



<!-- ========== css 설정 ============= -->
<!-- slick 플러그인 css -->
<link rel="stylesheet" type="text/css"
	href="assets/plugins/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="assets/plugins/slick/slick-theme.css" />
<link rel="stylesheet" type="text/css"
	href="assets/plugins/slick/prism.css">
<link rel="stylesheet" type="text/css"
	href="assets/plugins/slick/style.css">

<style type="text/css">
/** '약정보로 검색' */
.infosearch {
	font-weight: bold;
	font-size: 25px;
	float: left;
	padding-right: 54px;
	margin-bottom: 0px;
}

/** 약정보 검색바 전체 */
.search1 {
	margin-top: 35px;
}

.shapesearch {
	font-weight: bold;
	font-size: 25px;
	float: left;
	padding-right: 30px;
}

.form-control {
	width: 450px;
}

/** 검색버튼 style*/
.btn-search {
	background-color: #2E9AFE;
	width: 110px;
	height: 40px;
	text-align: middle;
	font-weight: bold;
	font-size: 15px;
	margin-left: 350px;
}

/** 약 검색 리스트 style */

/** 
* .medlist_wrap : 약리스트 전체단위
* .content_li: 약정보리스트 하나 단위
* .med_img : 약 이미지 
* .img_area:  약이미지 div
* .info_area:약 정보 div
* . subject: 약이름 제목
* .truncated_info: 약정보내용요약
*/
.content_li {
width:900px;
	height: 160px;
	list-style: none;
	margin-bottom:40px;
}

.med_img {
	width: 160px;
	height: 100px;
	margin-top: 30px;
}

.img_area {
	width: 160px;
	height: 160px;
	border: solid 1px #bababa;
	margin-right: 20px;
	float: left;
}

.info_area {
width:720px;
	height: 160px;
}

.subject {
	height: 40px;
	margin-bottom: 5px;
	font-size: 20px;
	font-weight: bold;
	color: #2E9AFE;
}

.truncated_info {
	font-size: 14px;
	font-weight: normal;
	color: black;
	text-align: justify;

	/* 약정보내용 줄여서 표현 말줄임표*/
	display: -webkit-box;
	-webkit-line-clamp: 5;		 /* 5줄까지만 보여주기*/
	-webkit-box-orient: vertical;
	overflow: hidden
}

/** ---------- slick slide css 설정 --------------*/
/** 배경화면 색상 */
#features {
	background: #ffffff;
}

/** 슬라이드 화살표 이미지 (다음) */
.slick-next:before {
	content: url("assets/img/arrow_next.png");
	width: 40px;
	height: 40px;
}

/** 슬라이드 화살표 이미지 (이전) */
.slick-prev:before {
	content: url("assets/img/arrow_back.png");
}

.slick-track {
	padding-left: 0px;
	margin-right: 0px;
}

.content {
	margin-left: 30px;
	margin-right: 30px;
	width: 750px;
}

/** 약색상 슬라이드 */
.slider responsive {
	width: 600px;
}

/** 슬라이드 첫번째 '색상전체' */
.all_select {
	font-size: 14px;
	color: black;
	margin-bottom: 0px;
	margin-top: 15px;
	margin-bottom: 15px;
}

/** 색상 이름 */
.colorname {
	font-size: 12px;
	color: black;
	padding-bottom: 0px;
	margin-bottom: 0px;
}

.slick-slide slick-active {
	margin-right: 0px;
	padding-right: 10px;
	padding-left: 10px;
}

/**  제형 슬라이드/분할선슬라이드 css  */
.slick-track {
	margin-left: 0px;
}
</style>


<!-- ========== css 설정 끝 ============= -->

<!-- ========== 컨텐츠 영역 시작 ========== -->

<div class="medsearch container">

	<form name="med_search" method="get" action="">

		<div class="form-group">

			<div class="search1">
				<p class="infosearch">약 정보로 검색</p>
				<input type="text" class="form-control"
					placeholder="약 이름 또는 성분 등으로 검색해 보세요."> <br />
			</div>

			<div class="search2">
				<p class="shapesearch">약 모양으로 검색</p>
				<input type="text" class="form-control"
					placeholder="식별문자(약의 앞면이나 뒷면의 문자)로 검색해 보세요.">
			</div>

		</div>


		<section id="features" class="blue">

			<div class="content">
				<!-- 색상 선택 슬라이드 -->
				<div class="slider responsive">
					<div>
						<p class="all_select">
							색상 <br /> 전체
						</p>
					</div>

					<div>
						<img src="assets/img/med_white.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>흰색</p>
					</div>

					<div>
						<img src="assets/img/med_yellow.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>노랑</p>


					</div>

					<div>
						<img src="assets/img/med_orange.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>주황</p>
					</div>
					<div>
						<img src="assets/img/med_pink.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>분홍</p>
					</div>
					<div>
						<img src="assets/img/med_red.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>빨강</p>
					</div>
					<div>
						<img src="assets/img/med_brown.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>갈색</p>
					</div>
					<div>
						<img src="assets/img/med_lightgreen.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>연두</p>
					</div>
					<div>
						<img src="assets/img/med_green.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>초록</p>
					</div>
					<div>
						<img src="assets/img/med_bluegreen.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>청록</p>
					</div>
					<div>
						<img src="assets/img/med_blue.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>파랑</p>
					</div>
					<div>
						<img src="assets/img/med_navy.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>남색</p>
					</div>
					<div>
						<img src="assets/img/med_purple.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>자주</p>
					</div>
					<div>
						<img src="assets/img/med_violet.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>보라</p>
					</div>
					<div>
						<img src="assets/img/med_grey.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>회색</p>
					</div>
					<div>
						<img src="assets/img/med_black.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>검정</p>
					</div>
					<div>
						<img src="assets/img/med_clear.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>투명</p>
					</div>
				</div>


				<!-- 모양선택 슬라이드 -->
				<div class="slider responsive">
					<div>
						<p class="all_select">
							모양 <br /> 전체
						</p>
					</div>
					<div>
						<img src="assets/img/shape_circle.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>원형</p>

					</div>
					<div>
						<img src="assets/img/shape_oval.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>타원형</p>

					</div>
					<div>
						<img src="assets/img/shape_halfcircle.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>반원형</p>

					</div>
					<div>
						<img src="assets/img/shape_triangle.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>삼각형</p>

					</div>
					<div>
						<img src="assets/img/shape_square.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>사각형</p>

					</div>
					<div>
						<img src="assets/img/shape_rhombus.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>마름모형</p>

					</div>
					<div>
						<img src="assets/img/shape_minus.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>장방형</p>

					</div>
					<div>
						<img src="assets/img/shape_pentagon.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>오각형</p>

					</div>
					<div>
						<img src="assets/img/shape_hexagon.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>육각형</p>

					</div>
					<div>
						<img src="assets/img/shape_octagon.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>팔각형</p>

					</div>
					<div>
						<img src="assets/img/shape_infinite.png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>기타</p>

					</div>
				</div>

				<!-- 약 제형선택 -->
				<div class="slider responsive">
					<div class="fomulation">
						<p class="all_select">
							제형 <br /> 전체
						</p>
					</div>
					<div>
						<img src="assets/img/pill(1).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>정제류</p>

					</div>
					<div>
						<img src="assets/img/pill(2).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>경질캡슐</p>

					</div>
					<div>
						<img src="assets/img/pill(3).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>연질캡슐</p>

					</div>
				</div>

				<!-- 분할선 선택 -->
				<div class="slider responsive">
					<div class="devide">
						<p class="all_select">
							분할선 <br /> 전체
						</p>
					</div>
					<div>
						<img src="assets/img/med_shape(1).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>없음</p>

					</div>
					<div>
						<img src="assets/img/med_shape(2).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>(-)형</p>

					</div>
					<div>
						<img src="assets/img/med_shape(3).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>(+)형</p>

					</div>

					<div>
						<img src="assets/img/med_shape(4).png"
							style="width: 50px; height: 50px; margin-left: 10px;">
						<p class=colorname>기타</p>

					</div>
				</div>
			</div>

			<!-- 검색버튼 -->
			<input class='btn-search' type='submit' value='검색'>
			<hr />
			<!-- 약 리스트(초기설정은 전체목록/ 검색시 결과만 노출) -->
			<div class="medlist_wrap">
				<ul>
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area">
							<img class="med_img" src="assets/img/medicine.png">
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">인사돌</a></div>
							<p class="truncated_info">용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								연령, 증상에 따라 적절히 증감한다. 사용상 주의사항 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제) 1. 다음과 같은 사람은 이 약을 복용하지 말 것. 1) 이 약 및 이 약의
								구성성분에의 과민반응 환자 2) 이 약은 유당을 함유하고 있으므로, 갈락토오스 불내성(galactose
								intolerance), Lapp 유당분해효소 결핍증(Lapp lactase deficiency) 또는
								포도당-갈락토오스 흡수장애(glucose-galactose malabsorption) 등의 유전적인 문제가 있는
								환자에게는 투여하면 안 된다(유당 함유제제에 한함). 2. 다음과 같은 사람(경우)은 이 약을 복용하기 전에 의사,
								치과의사, 약사와 상의할 것. 1) 아조계 색소류, 아세틸살리실산 또는 다른 Prostaglandin
								synthase 억제제에 과민반응이 있는 환자는 이 약의 사용에 신중을 기해야 한다. 2) 이 약은 콜레스테롤류
								약물의 흡수를 방해할 수 있으므로 주의한다. 3) 임부 또는 임신하고 있을 가능성이 있는 여성, 수유부(임신 중의
								투여에 대한 안전성이 확립되어 있지 않으므로 임부 또는 임신하고 있을 가능성이 있는 여성에는 치료 상의 유익성이
								위험성을 상회한다고 판단되는 경우에만 투여한다.) 4) 이 약은 황색4호(타르트라진), 황색5호(선셋옐로우
								FCF)를 함유하고 있으므로 약물에 과민하거나 알레르기 경력이 있는 사람은 복용 전에 의사, 치과의사, 또는 약사와
								상의할 것(황색4호(타르트라진), 황색5호(선셋옐로우 FCF) 함유제제에 한함). 3. 다음과 같은 경우 이 약의
								복용을 즉각 중지하고 의사, 치과의사, 약사와 상의할 것. 상담 시 가능한 한 이 첨부문서를 소지할 것. 1)
								가벼운 완하작용을 일으킬 수 있다. 2) 천식 또는 만성 두드러기가 있거나, 비스테로이드성 항염증제류에 과민반응을
								보이는 환자에게 이 약을 투여하는 경우 피부나 호흡기계에 과민반응을 유발할 수 있다. 3) 국내에서 이 약의 유효성
								및 안전성을 평가하기 위하여 치주질환 환자를 대상으로 실시한 임상시험결과, 이 약을 복용(초기 4주간 1일3회,
								1회 2정 복용, 4주부터 12주까지 1일3회, 1회 1정 복용, 총 12주간 복용) 한 환자 72명에서 이 약과의
								인과관계에 상관없이 보고된 이상반응은 다음과 같다. 코인두염(2건), 치아농양(치아고름집), 복통(배아픔),
								치아파절, AST증가, ALT 증가, 녹내장, 고지혈증, 팔다리통증, 이를 뽑음(발치)(각 1건) 4) 1개월 이상
								복용하여도 증상의 개선이 없을 경우 4. 기타 이 약의 복용시 주의할 사항 1) 정해진 용법·용량을 잘 지킬 것.
								2) 장기간 계속하여 복용하지 말 것. 5. 저장상의 주의사항 1) 어린이의 손에 닿지 않는 곳에 보관할 것. 2)
								직사일광(햇볕)을 피하고 될 수 있는 대로 습기가 적은 서늘한 곳에 보관할 것. 3) 의약품을 원래 용기에서 꺼내서
								다른 용기에 보관하는 것은 의약품 오용(잘못 사용)에 의한 사고발생이나 의약품 품질 저하의 원인이 될 수 있으므로
								원래의 용기에 넣고 꼭 닫아 보관할 것. (캡슐제) 1. 다음과 같은 사람은 이 약을 복용하지 말 것. 1) 이 약
								및 이 약의 구성성분에의 과민반응 환자 2) 대두유에 과민하거나 알레르기 병력이 있는 환자(대두유 함유제제에 한함)
								3) 콩 또는 땅콩에 과민증이 있는 환자(대두유 함유제제에 한함) 2. 다음과 같은 사람(경우)은 이 약을 복용하기
								전에 의사, 치과의사, 약사와 상의할 것. 1) 아조계 색소류, 아세틸살리실산 또는 다른 Prostaglandin
								synthase 억제제에 과민반응이 있는 환자는 이 약의 사용에 신중을 기해야 한다. 2) 이 약은 콜레스테롤류
								약물의 흡수를 방해할 수 있으므로 주의한다. 3) 임부 또는 임신하고 있을 가능성이 있는 여성, 수유부(임신 중의
								투여에 대한 안전성이 확립되어 있지 않으므로 임부 또는 임신하고 있을 가능성이 있는 여성에는 치료 상의 유익성이
								위험성을 상회한다고 판단되는 경우에만 투여한다.) 4) 이 약은 황색5호(선셋옐로우 FCF, Sunset
								Yellow FCF)를 함유하고 있으므로 이 성분에 과민하거나 알레르기 병력이 있는 환자에는 신중히
								투여한다(황색5호(선셋옐로우 FCF, Sunset Yellow FCF) 함유제제에 한함). 5) 고지단백혈증,
								당뇨병성고지질혈증 및 췌장(이자)염 등 지방대사 이상 환자 또는 지질성 유제를 신중히 투여해야 하는 환자(대두유
								함유제제에 한함) 3. 다음과 같은 경우 이 약의 복용을 즉각 중지하고 의사, 치과의사, 약사와 상의할 것. 상담
								시 가능한 한 이 첨부문서를 소지할 것. 1) 가벼운 완하작용을 일으킬 수 있다. 2) 천식 또는 만성 두드러기가
								있거나, 비스테로이드성 항염증제류에 과민반응을 보이는 환자에게 이 약을 투여하는 경우 피부나 호흡기계에 과민반응을
								유발할 수 있다. 3) 국내에서 이 약의 유효성 및 안전성을 평가하기 위하여 치주질환 환자를 대상으로 실시한
								임상시험결과, 이 약을 복용(초기 4주간 1일3회, 1회 2정 복용, 4주부터 12주까지 1일3회, 1회 1정
								복용, 총 12주간 복용) 한 환자 72명에서 이 약과의 인과관계에 상관없이 보고된 이상반응은 다음과 같다.
								코인두염(2건), 치아농양(치아고름집), 복통(배아픔), 치아파절, AST증가, ALT 증가, 녹내장, 고지혈증,
								팔다리통증, 이를 뽑음(발치)(각 1건) 4) 1개월 이상 복용하여도 증상의 개선이 없을 경우 4. 기타 이 약의
								복용 시 주의할 사항 1) 지방과부하로 특별한 위험이 예상되는 환자에게 이 약을 투여할 때 혈장지질치를 점검할 것을
								권장합니다. 이 점검을 통해 지방의 체외배설이 불충분하다고 판단될 경우에는 이 약의 투여를 적절히 조절합니다.
								환자가 다른 정주용 지질제를 동시에 투여받고 있다면 이 약 중의 부형제로 혼재되어 있는 지질의 양을 고려하여 그
								지질제의 투여량을 감소해야 한다(대두유 함유제제에 한함). 2) 정해진 용법·용량을 잘 지킬 것. 3) 장기간
								계속하여 복용하지 말 것. 5. 저장상의 주의사항 .</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area" >
							<img class="med_img" src="assets/img/medicine02.jpg" >
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">소론도정</a></div>
							<p class="truncated_info">소론도정용법용량테스트용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트
								소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트소론도정용법용량테스트</p>
						</div>
					</li>
					
					<li class="content_li">
					<a href="<%=request.getContextPath()%>/medicine_detail.do">
						<div class="img_area">
							<img class="med_img" src="assets/img/medicine.png">
						</div>
						</a>
						<div class="info_area">
							<div class="subject"><a href="<%=request.getContextPath()%>/medicine_detail.do">인사돌</a></div>
							<p class="truncated_info">테스트테스트말줄임표되는지 테스트중 용법용량 [허가사항변경(2014년 재평가), 한약정책과,
								2016.08.04.] (정제)(캡슐제) 성인 : 초기량으로는 옥수수의 불검화정량추출물로서 1회 70㎎(2정),
								1일 3회 식전에 경구투여(복용) 한다. 유지량으로는 1회 35㎎(1정), 1일 3회 식전에 경구투여(복용) 한다.인사돌테스트인사돌테스트
								인사돌테스트인사돌테스트인사돌테스트인사돌테스트인사돌테스트인사돌테스트인사돌테스트인사돌테스트말줄임표되는건가?
								</p>
						</div>
					</li>
				</ul>

			</div>
		</section>
		
		<!-- 페이징 -->
	<nav class="text-center" style="margin-bottom: 40px;">
		<ul class="pagination">
			<li class="disabled"><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	</form>
</div>

<!-- ========== 컨텐츠 영역 끝 ========== -->

<!-- ========== Javascript 시작 ========== -->
<!-- slick plugin 참조 / 약모양,약색상 등 슬라이드에 이용 -->
<script type="text/javascript" src="assets/plugins/slick/slick.min.js"></script>

<script type="text/javascript">
<!-- =============== slick JS 시작 ================= -->
	$('.responsive').slick({
		dots : false,
		infinite : false,
		speed : 300,
		slidesToShow : 10,
		slidesToScroll : 7,
		responsive : [ {
			breakpoint : 1024,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3,
				infinite : false,
				dots : false
			}
		}, {
			breakpoint : 600,
			settings : {
				slidesToShow : 6,
				slidesToScroll : 6
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 6,
				slidesToScroll : 6
			}
		}
		// You can unslick at a given breakpoint now by adding:
		// settings: "unslick"
		// instead of a settings object
		]
	});
	<!--================= slick JS 끝 =======================-->
</script>
<!-- ========== Javascript 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>
