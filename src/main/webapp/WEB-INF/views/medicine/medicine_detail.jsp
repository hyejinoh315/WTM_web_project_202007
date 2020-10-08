
<%
	/**
* @filename : medicine_detail.jsp
* @description : --- 약 상세페이지 ---
* @author : 박수인(sooin5959@gmail.com)
*/
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header include -->
<%@ include file="../_inc/header.jsp"%>


<!-- ========== 컨텐츠 영역 시작 ========== -->
<!-- ========== css 설정 ============= -->
<!-- fontawesome -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.med_info {
	width: 940px;
	padding-top: 40px;
}

.medtitle {
	margin-top: 35px;
	margin-bottom: 50px;
	text-align: center;
	font-weight: bold;
	font-size: 40px;
}

.med_img {
	float: left;
}

.med_table {
	border-top: solid #c7c8d4;
	border-bottom: solid #c7c8d4;
	border-spacing: 0;
	width: 400px;
	height: 200px;
	
}

.med_table td {
	font-size: 16px;
	overflow: hidden;
	padding: 10px 5px;
}

.med_table th {
	font-size: 16px;
	overflow: hidden;
	padding: 10px 5px;
}

.TableTitle {
	width: 150px;
	text-align: left;
	vertical-align: top;
	font-weight: bold;
	font-size: 16px;
}

.TableContent {
	text-align: left;
	vertical-align: top;
	font-size: 16px;
}

.InfoTxt {
	float: left;
	width: 930px;
}

.meddetail {
	padding-top: 100px;
	list-style: none;
	padding-bottom: 45px;
}

.li_title {
	font-size: 25px;
	font-weight: bold;
	padding-bottom: 15px;
}

.li_content {
	font-size: 17px;
	padding-bottom: 35px;
}
</style>

<!-- ========== css 설정 끝 ============= -->


<div class="medinfo container">
	<div class="med_info">

		<!-- 약이름  -->
		<div class="medtitle">
			<p>인사돌</p>
		</div>

		<!-- 약 사진 -->
		<div class="med_img">
			<img src="assets/img/medicine.png" alt="약 이미지"
				style="width: 420px; height: 200px;">
		</div>

		<!-- 약 간략한 설명 테이블 -->
		<table class="med_table">
			<tr>
				<td class="TableTitle" style="padding-top: 20px;">분류명</td>
				<td class="TableContent" style="padding-top: 20px;">기타의 순환계용약</td>
			</tr>
			<tr>
				<td class="TableTitle">전문일반구분</td>
				<td class="TableContent">일반의약품</td>
			</tr>
			<tr>
				<td class="TableTitle">제조업체명</td>
				<td class="TableContent">영진약품(주)</td>
			</tr>
			<tr>
				<td class="TableTitle" style="padding-bottom: 20px;">품목일련번호</td>
				<td class="TableContent" style="padding-bottom: 20px;">10298092</td>
			</tr>
		</table>
	</div>

	<!-- 약 상세설명 -->
	<div class="InfoTxt">
		<ul class="meddetail">
			<li class="li_title">제형</li>
			<li class="li_content">필름코팅정</li>
			<li class="li_title">모형</li>
			<li class="li_content">원형</li>
			<li class="li_title">색상</li>
			<li class="li_content">주황</li>
			<li class="li_title">효능효과</li>
			<li class="li_content">치주치료 후 치은염, 경.중등도 치주염의 보조치료</li>
		</ul>
	</div>


	
	<!-- 저작권 -->
		<div class="cite_desc">
		<p>본 콘텐츠의 저작권은 저자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적책임을 질 수 있습니다.
		<br>
		외부 저작권자가 제공한 콘텐츠는 이거모약의 입장과 다를 수 있습니다. </p> 
		<br>  
		
		</div>
	
</div>





<!-- ========== 컨텐츠 영역 끝 ========== -->
<%@ include file="../_inc/footer.jsp"%>