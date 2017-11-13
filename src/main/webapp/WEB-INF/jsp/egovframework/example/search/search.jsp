<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%@ 
taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %><%@ 
taglib prefix="form"   uri="http://www.springframework.org/tags/form" %><%@ 
taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%><%@ 
taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes">
<meta property="og:type" content="website" />
<meta property="og:title" content="">
<meta property="og:description" content="">
<meta property="og:url" content=""/>
<meta property="og:image" content=""/>
<meta name="description" content="" />
<meta name="keyword" content="" />
<title>통합검색</title>
<link type="image/x-icon" rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/css/base.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/css/layout.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/css/font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/css/search.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/css/responsive.css">
<script src="${pageContext.request.contextPath}/web/js/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/web/js/search.js"></script>
</head>
<body id="main">	
<ul id="skipnavi">
	<li><a href="#container">본문 바로가기</a></li>
	<li><a href="#gnb">메뉴 바로가기</a></li>
</ul>
<div id="wrap">
	<header id="header">
		<div class="util">
			<div class="row">
				<ul class="top_site">
					<li><a href="http://job.jeonnam.go.kr" class="current">전라남도일자리종합센터</a></li>					
					<li><a href="http://www.jeonnam.go.kr" target="_blank" title="새창">전라남도청</a></li>
					<li><a href="http://www.jepa.kr" target="_blank" title="새창">전라남도중소기업종합지원센터</a></li>
				</ul>
				<ul class="top_mem">
					<li><a href="http://job.jeonnam.go.kr/info/siteMap.do?menuCd=J009004" class="sitemap">사이트맵</a></li>
				</ul>
			</div>
		</div><!--//util -->
		<div class="head row">
			<div class="logo fl">
				<h1><a href="http://job.jeonnam.go.kr" class="shmobilelogo"><img src="${pageContext.request.contextPath}/web/images/common/logo.png" alt=""></a></h1>
				<span><img src="${pageContext.request.contextPath}/web/images/common/logo_sub.png" alt="생명의 땅, 청년이 돌아오는 전남"></span>
			</div>
			<div class="search fr mt10">
                    <fieldset>
                        <legend>통합검색</legend>
                        <label for="topQuery" class="hidden">검색어 입력</label>
                        <form id="searchForm" action="${pageContext.request.contextPath}/app/search.do" method="get">
                        	<input type="text" id="topQuery" name="query" title="통합검색" style="ime-mode:active;" class="input" value="${query}">
                        	<input type="hidden" id="collection" name="collection" value="${collection}"/>
                        	<input type="image" id="topSearch" name="topSearch" src="${pageContext.request.contextPath}/web/images/common/btn_search.gif" alt="검색하기" class="btn_search">
                        </form>
                    </fieldset>
                </div>
		</div>
		<div id="gnb" class="gnbArea">
		</div>
	</header>
	<div id="container">	
    	<!--통합검색-->
        <div id="contents" class="row">
        	<!--탭메뉴-->
            <div class="category">
                <ul>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'ALL'}"> on</c:if>"><a href="ALL">통합검색</a></li>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'employmentInformation'}"> on</c:if>"><a class="totalAreaUlLiA" href="employmentInformation">채용정보</a></li>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'recruitInformation'}"> on</c:if>"><a class="totalAreaUlLiA" href="recruitInformation">인재정보</a></li>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'educationTraining'}"> on</c:if>"><a class="totalAreaUlLiA" href="educationTraining">교육훈련정보</a></li>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'localBusiness'}"> on</c:if>"><a class="totalAreaUlLiA" href="localBusiness">지원사업안내</a></li>
                    <li class="totalAreaUlLi<c:if test="${collection eq 'jobNews'}"> on</c:if>"><a class="totalAreaUlLiA" href="jobNews">일자리뉴스</a></li>
                </ul>
            </div>
            <!--//탭메뉴-->
        	<div id="contentBody" class="contentBody">
            	<div class="result_word">
                    <p>검색어 <span>"${query}"</span>에 대한 <span>총 ${totalCount}건</span>의 검색결과를 찾았습니다.</p>
                </div>
            	<div class="resultWrap">
            		<c:if test="${collection eq 'ALL'}">
                	<!--통합검색-->
                    <div class="srchArea total">
                        <h2>통합검색 <span>(총 ${totalCount}건)</span></h2>
                        <div class="total_box">
                            <ul id="totalAreaUl">
                                <li class="totalAreaUlLi"><a class="totalAreaUlLiA" href="employmentInformation" title="본문결과 이동">채용정보(<c:out value="${collectionCountMap['employmentInformationCount']}"/>)</a></li>
                                <li class="totalAreaUlLi"><a class="totalAreaUlLiA" href="recruitInformation" title="본문결과 이동">인재정보(<c:out value="${collectionCountMap['recruitInformationCount']}"/>)</a></li>
                                <li class="totalAreaUlLi"><a class="totalAreaUlLiA" href="educationTraining" title="본문결과 이동">교육훈련정보(<c:out value="${collectionCountMap['educationTrainingCount']}"/>)</a></li>
                                <li class="totalAreaUlLi"><a class="totalAreaUlLiA" href="localBusiness" title="본문결과 이동">지원사업안내(<c:out value="${collectionCountMap['localBusinessCount']}"/>)</a></li>
                                <li class="totalAreaUlLi"><a class="totalAreaUlLiA" href="jobNews" title="본문결과 이동">일자리뉴스(<c:out value="${collectionCountMap['jobNewsCount']}"/>)</a></li>
                            </ul>
                        </div>
                    </div>
                    </c:if>
                    <c:if test="${(collection eq 'ALL' && collectionCountMap['employmentInformationCount'] > 0) || collection eq 'employmentInformation'}">
                    <!--채용정보-->
                    <div class="srchArea">
                        <h2>채용정보 <span>(총 <c:out value="${collectionCountMap['employmentInformationCount']}"/>건)</span></h2>
                        <c:forEach var="entry" items="${collectionResultMap['employmentInformationResult']}" varStatus="status">
                        <div class="job_box">
                        	<dl>
                            	<dt>
                                	<a href="#">${entry['COMPANY_NAME']}</a>
                                    <span class="bookmark ml20"><button type="button" class="btn btn-default sm ic-bookmark" onclick="">관심등록</button></span>
                                </dt>
                                <dd>
                                	<p><!--채용제목-->${entry['TITLE']}</p>
                                    <span><strong>마감일 : </strong>${entry['ACCEPT_END_DAY']}(월)</span>
                                	<span><strong>경력 : </strong>${entry['CAREER_TERMS']}</span>
                                    <span><strong>학력 : </strong>${entry['HIRE_MONEY_TYPE']}</span>
                                    <span><strong>고용형태 : </strong>${entry['HIRE_MONEY_TYPE']}</span>
                                    <span class="bg_none"><strong>근무지역 : </strong>${entry['LOCATION']}</span>
                                    <span class="db bg_none"><strong>키워드 : </strong>${entry['KEYWORD']}</span>
                                </dd>
                                <c:if test="${status.last && collectionCountMap['employmentInformationCount'] > 3 && collection eq 'ALL'}">
                                	<dd class="totalAreaUlLi tar more"><a class="totalAreaUlLiA" href="employmentInformation">검색결과 더보기</a></dd>
                                </c:if>
                            </dl>
                        </div>
                        </c:forEach>
                    </div>
                    <!--//채용정보-->
                    </c:if>
                    <c:if test="${(collection eq 'ALL' && collectionCountMap['recruitInformationCount'] > 0) || collection eq 'recruitInformation'}">
                    <!--인재정보-->
                    <div class="srchArea">
                        <h2>인재정보 <span>(총 <c:out value="${collectionCountMap['recruitInformationCount']}"/>건)</span></h2>
                        <c:forEach var="entry" items="${collectionResultMap['recruitInformationResult']}" varStatus="status">
                        <div class="job_box">
                        	<dl>
                            	<dt>
                                	<a href="#"><!--성명-->${entry['USER_NM']}<span class="font_s3">(${entry['SEX']}, 만 ${entry['AGE']}세)</span></a>
                                    <span class="bookmark ml20"><button type="button" class="btn btn-default sm ic-bookmark" onclick="">관심등록</button></span>
                                </dt>
                                <dd>
                                	<p><!--이력서제목-->${entry['TITLE']}</p>
                                    <span><strong>희망직종 : </strong>${entry['HOPE_WORK_DETAIL']}(월)</span>
                                	<span><strong>경력 : </strong>${entry['CAREER_YEAR']}, ${entry['CAREER_MONTH']}</span>
                                    <span><strong>학력 : </strong>${entry['DEGREE']}</span>
                                    <span><strong>희망고용형태 : </strong>${entry['HOPE_PAY_TYPE']}</span>
                                    <span class="bg_none"><strong>희망근무지 : </strong>${entry['HOPE_LOCATION']}</span>
                                    <span class="db bg_none"><strong>키워드 : </strong>${entry['KEYWORD']}</span>
                                </dd>
                                <c:if test="${status.last && collectionCountMap['recruitInformationCount'] > 3 && collection eq 'ALL'}">
                                	<dd class="totalAreaUlLi tar more"><a class="totalAreaUlLiA" href="recruitInformation">검색결과 더보기</a></dd>
                                </c:if>
                            </dl>
                        </div>
                        </c:forEach>
                    </div>
                    <!--//인재정보-->
                    </c:if>
                    <c:if test="${(collection eq 'ALL' && collectionCountMap['educationTrainingCount'] > 0) || collection eq 'educationTraining'}">
                    <!--교육훈련정보-->
                    <div class="srchArea">
                        <h2>교육훈련 <span>(총 <c:out value="${collectionCountMap['educationTrainingCount']}"/>건)</span></h2>
                        <c:forEach var="entry" items="${collectionResultMap['educationTrainingResult']}" varStatus="status">
                        <div class="job_box">
                        	<dl>
                            	<dt>
                                	<a href="#"><!--교육훈련기관명-->${entry['INSTITUTION_NAME']}</a>
                                </dt>
                                <dd>
                                	<p><!--교육훈련명-->${entry['TITLE']}</p>
                                    <span><strong>모집기간 : </strong>${entry['RECRUIT_END']}(월)</span>
                                	<span><strong>교육정원 : </strong>${entry['EDU_MAX_COUNT']}</span>
                                    <span><strong>교육시간 : </strong>${entry['EDU_TIME']}</span>
                                    <span class="bg_none"><strong>교육장소 : </strong>${entry['LOCATION']}</span>
                                </dd>
                                <c:if test="${status.last && collectionCountMap['educationTrainingCount'] > 3 && collection eq 'ALL'}">
                                	<dd class="totalAreaUlLi tar more"><a class="totalAreaUlLiA" href="educationTraining">검색결과 더보기</a></dd>
                                </c:if>	
                            </dl>
                        </div>
                        </c:forEach>
                    </div>
                    <!--//교육훈련정보-->
                    </c:if>
                    <c:if test="${(collection eq 'ALL' && collectionCountMap['localBusinessCount'] > 0) || collection eq 'localBusiness'}">
                    <!--지원사업안내-->
                    <div class="srchArea">
                        <h2>지원사업안내 <span>(총 <c:out value="${collectionCountMap['localBusinessCount']}"/>건)</span></h2>
                        <div class="txt_box">
                        	<ul>
                        		<c:forEach var="entry" items="${collectionResultMap['localBusinessResult']}" varStatus="status">
                            	<li>
                                	<!--1-->
                                	<div class="fl">
                                    	<span class="mr3 font_s16">${entry['BOARD_ID']}</span>
                                        <a href="#"><strong>${entry['TITLE']}</strong></a>
                                        <span class="fc_gray">${entry['DATE']}</span>
                                        <p class="txt_justify">${entry['CONTENT']}</p>
                                    </div>
                                    <span class="fr"><img src="${pageContext.request.contextPath}/web/images/content/com_head_bg.jpg" alt=""></span>
                                    <!--//1-->
                                </li>
                                </c:forEach>
                                <c:if test="${status.last && collectionCountMap['localBusinessCount'] > 3 && collection eq 'ALL'}">
                                	<li class="totalAreaUlLi tar more"><a class="totalAreaUlLiA" href="localBusiness">검색결과 더보기</a></dd>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                    <!--//지원사업안내-->
                    </c:if>
                    <c:if test="${(collection eq 'ALL' && collectionCountMap['jobNewsCount'] > 0) || collection eq 'jobNews'}">
                    <!--일자리뉴스-->
                    <div class="srchArea">
                        <h2>일자리뉴스 <span>(총 <c:out value="${collectionCountMap['jobNewsCount']}"/>건)</span></h2>
                        <div class="txt_box">
                        	<ul>
                        		<c:forEach var="entry" items="${collectionResultMap['jobNewsResult']}" varStatus="status">
                            	<li>
                                	<!--1-->
                                	<div class="fl">
                                    	<span class="mr3 font_s16">>${entry['BOARD_ID']}</span>
                                        <a href="#"><strong>${entry['TITLE']}제목이 노출정의 안됨</strong></a>
                                        <span class="fc_gray">${entry['DATE']}</span>
                                        <p class="txt_justify">${entry['CONTENT']}</p>
                                    </div>
                                    <span class="fr"><img src="${pageContext.request.contextPath}/web/images/content/com_head_bg.jpg" alt=""></span>
                                    <!--//1-->
                                </li>
                                <c:if test="${status.last && collectionCountMap['jobNewsCount'] > 3 && collection eq 'ALL'}">
                                	<li class="totalAreaUlLi tar more"><a class="totalAreaUlLiA" href="jobNews">검색결과 더보기</a></dd>
                                </c:if>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!--//일자리뉴스-->
                	</c:if>
                	<c:if test="${totalCount > 3 && collection ne 'ALL'}">
                	<!--page navigation-->
					<div class="paging_wrap">
						<div class="tac">
							<ul class="pagination">
								<li class="button previous"><a href="#" title="처음"><span>처음</span></a></li>
                                <li class="button left"><a href="#" title="이전"><span>이전</span></a></li>
                                <li class="active"><a href="#" title="현재"><strong>1</strong></a></li>
                                <li><a href="#" title="다음">2</a></li>
                                <li><a href="#" title="다음">3</a></li>
                                <li><a href="#" title="다음">4</a></li>
                                <li><a href="#" title="다음">5</a></li>
                                <li class="button right"><a href="#" title="다음"><span>다음</span></a></li>
                                <li class="button next"><a href="#" title="마지막"><span>마지막</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--//page navigation-->
                    </c:if> 
                </div>
                <div class="resultAside">
                	<!--내가찾은 검색어-->
                    <div class="box">
                        <h2>내가 찾은 검색어</h2>
                            <ul>
                                <li><span class="num">1</span><a href="가나다라마바사" class="otherKeyword">가나다라마바사</a></li>
                                <li><span class="num">2</span><a href="우리나라대한민국" class="otherKeyword">우리나라대한민국</a></li>
                                <li><span class="num">3</span><a href="전라남도 삼향읍" class="otherKeyword">전라남도 삼향읍</a></li>
                                <li><span class="num">4</span><a href="후광대로 전라남도청" class="otherKeyword">후광대로 전라남도청</a></li>
                                <li><span class="num">5</span><a href="전라남도일자리종합센터" class="otherKeyword">전라남도일자리종합센터</a></li>			
                            </ul>                   
                    </div>
                    <!--//내가 찾은 검색어-->
                    <!--인기 검색어-->
                    <div class="box popluar">
                        <h2>인기 검색어</h2>
                            <ul>
                                <li><span class="num">1</span><a href="가나다라마바사" class="otherKeyword">가나다라마바사</a></li>
                                <li><span class="num">2</span><a href="우리나라대한민국" class="otherKeyword">우리나라대한민국</a></li>
                                <li><span class="num">3</span><a href="#id" onclick="#">전라남도 삼향읍</a></li>
                                <li><span class="num">4</span><a href="#id" onclick="#">후광대로 전라남도청</a></li>
                                <li><span class="num">5</span><a href="#id" onclick="#">전라남도일자리종합센터</a></li>
                                <li><span class="num">6</span><a href="#id" onclick="#">가나다라마바사</a></li>
                                <li><span class="num">7</span><a href="#id" onclick="#">우리나라대한민국</a></li>
                                <li><span class="num">8</span><a href="#id" onclick="#">전라남도 삼향읍</a></li>
                                <li><span class="num">9</span><a href="#id" onclick="#">후광대로 전라남도청</a></li>
                                <li><span class="num">10</span><a href="#id" onclick="#">전라남도일자리종합센터</a></li>			
                            </ul>                   
                    </div>
                    <!--//인기 검색어-->
                </div>
            </div>
        </div>
        <!--//통합검색-->
	</div><!-- //container -->
	<footer id="footer">
    <div class="row">
        <div class="copyright fl">
            <div class="footlogo"><img src="${pageContext.request.contextPath}/web/images/common/logo_foot.png" alt="전라남도일자리종합센터"></div>
            <ul class="footmenu mb10">
                <li><a href="http://job.jeonnam.go.kr/content/view.do?menuCd=J008001">센터소개</a></li>
                <li><a href="http://job.jeonnam.go.kr/content/view.do?menuCd=J009005">회원약관</a></li>
                <li><a href="http://job.jeonnam.go.kr/content/view.do?menuCd=J009006">개인정보보호정책</a></li>
                <li><a href="http://job.jeonnam.go.kr/content/view.do?menuCd=J009007">이메일무단수집거부</a></li>
                <li><a href="http://job.jeonnam.go.kr/info/siteMap.do?menuCd=J009004">사이트맵</a></li>
                <li><a href="http://job.jeonnam.go.kr/board/JOB_BOARD_0004/boardList.do?menuCd=J007001">고객센터</a></li>
            </ul>
            <p>
                <span class="footaddr">(우)58564 전라남도 무안군 삼향읍 오룡3길 2 중소기업종합지원센터</span>
                <span class="foottel">대표전화 <strong>061-287-1142~3</strong></span>
                <span class="footfax">팩스번호 <strong>061-287-1146</strong></span>
            </p>
            <p>Copyright © Jeollanam-do. All Rights Reserved.</p>
        </div>
    </div>
</footer>    
</div><!-- //wrap -->
</body>
</html>