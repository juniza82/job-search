<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><%@ 
taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %><%@ 
taglib prefix="form"   uri="http://www.springframework.org/tags/form" %><%@ 
taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%><%@ 
taglib prefix="spring" uri="http://www.springframework.org/tags"%><%@ 
taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%@ 
taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="ko-KR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>일자리통합정보망 > 통합검색</title>

    <!-- ##### CSS 구역 ##### -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webNet/css/base.css?ver=1" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webNet/css/layout.css?ver=1" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webNet/css/content.css?ver=1" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webNet/css/respond/content.css?ver=1" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webNet/css/respond/layout.css?ver=1" />

    <!-- ##### 기존의 jquery가 필요할꺼 같아서 추가 ##### -->
    <script src="${pageContext.request.contextPath}/webNet/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/webNet/js/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/webNet/js/search.js"></script>

    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/webNet/js/html5shiv.js"></script>
    <![endif]-->
</head>

<body>

<div id="skipNav">
    <a href="#container">본문으로 바로가기</a>
    <a href="#gnb">주메뉴 바로가기</a>
</div>
<div id="wrap">
    <div class="mbg"></div><!--//Mobile Background-->
    <header id="header" class="start">
        <div class="util_wrap">
            <ul class="util_menu">
                <li class="on"><a href="/"><span class="logo_title"></span>일자리통합정보망</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">구인구직</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">교육훈련</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">일자리지원</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">미니잡매칭</a></li>
            </ul>
        </div>
        <div class="container">
            <h1 class="logo"><a href="/"><span class="sr-only">전라남도 교육훈련</span></a></h1>
        </div>
    </header>
    <div id="container">
        <div id="contents">
            <!--통합검색-->
            <div class="total_search">
                <div class="search_form">
                    <form>
                        <fieldset>
                            <legend>통합검색</legend>
                            <div class="keyword">
                                <div class="searchbox">
                                    <input type="text" name="query" id="topQuery" class="search_box" value="검색하실 키워드를 입력해주세요!" title="검색어를 입력해주세요" onkeydown="if(event.keyCode == 13) commSearchForm.submit();" onfocus="this.value='';return true">
                                    <button type="submit"><span class="blind">검색</span></button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <p class="ment">&quot;<span class="fc_red"><strong>일자리</strong></span>&quot; 에 대한 전체 <strong>총 <span>847</span> 건</strong>의 결과를 찾았습니다.</p>
                <div class="result">
                    <h2 class="hidden">주메뉴</h2>
                    <menu id="lmb">
                        <ul class="lm_2th">
                            <li><a href="#" title="MENU 통합검색 Search"><span>통합검색</span></a></li>
                            <li><a href="#" class="on" title="MENU 구인구직 Search"><span>구인구직</span></a></li>
                            <li><a href="#" title="MENU 교육훈련 Search"><span>교육훈련</span></a></li>
                            <li><a href="#" title="MENU 일자리지원 Search"><span>일자리지원</span></a></li>
                            <li><a href="#" title="MENU 미니잡매칭 Search"><span>미니잡매칭</span></a></li>
                        </ul>
                    </menu>
                    <div class="item">
                        <!--통합검색 박스-->
                        <div class="total_search_box">
                            <div class="ts_wrap">
                                <span><span class="em_b_black">구인구직</span> (총 369건)</span>
                                <ul class="clearfix">
                                    <li><a href="/">채용정보 (<span class="fc_red">1</span>)</a></li>
                                    <li><a href="/">공공일자리 (<span class="fc_red">0</span>)</a></li>
                                    <li><a href="/">공공기관채용정보 (<span class="fc_red">4</span>)</a></li>
                                    <li><a href="/">공채속보 (<span class="fc_red">364</span>)</a></li>
                                    <li><a href="/">게시판 (<span class="fc_red">364</span>)</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--//통합검색 박스-->
                        <div class="search_sec">
                            <h2>채용정보 <span>총 1,1000건</span></h2>
                            <div class="job_box">
                                <dl>
                                    <dt>
                                        <a href="/">이랜드하당노인복지관</a>
                                    </dt>
                                    <dd>
                                        <p><!--채용제목-->하당노인복지관 노인<!--HS-->일자리<!--HE--> 및 사회활동지원사업 전담...</p>
                                        <span><strong>마감일 : </strong>2017-12-15(금)</span>
                                        <span><strong>경력 : </strong>경력무관</span>
                                        <span><strong>학력 : </strong>고졸 ~ 대졸(4년)</span>
                                        <span><strong>고용형태 : </strong>월급</span>
                                        <span class="bg_none"><strong>근무지역 : </strong>전남 목포시</span>
                                        <span class="db bg_none"><strong>키워드 : </strong>전담인력,노인<!--HS-->일자리</span>
                                        <em>홈 &gt; 구인구직 &gt; 채용정보</em>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <a href="/">이랜드하당노인복지관</a>
                                    </dt>
                                    <dd>
                                        <p><!--채용제목-->하당노인복지관 노인<!--HS-->일자리<!--HE--> 및 사회활동지원사업 전담...</p>
                                        <span><strong>마감일 : </strong>2017-12-15(금)</span>
                                        <span><strong>경력 : </strong>경력무관</span>
                                        <span><strong>학력 : </strong>고졸 ~ 대졸(4년)</span>
                                        <span><strong>고용형태 : </strong>월급</span>
                                        <span class="bg_none"><strong>근무지역 : </strong>전남 목포시</span>
                                        <span class="db bg_none"><strong>키워드 : </strong>전담인력,노인<!--HS-->일자리</span>
                                        <em>홈 &gt; 구인구직 &gt; 채용정보</em>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <a href="/">이랜드하당노인복지관</a>
                                    </dt>
                                    <dd>
                                        <p><!--채용제목-->하당노인복지관 노인<!--HS-->일자리<!--HE--> 및 사회활동지원사업 전담...</p>
                                        <span><strong>마감일 : </strong>2017-12-15(금)</span>
                                        <span><strong>경력 : </strong>경력무관</span>
                                        <span><strong>학력 : </strong>고졸 ~ 대졸(4년)</span>
                                        <span><strong>고용형태 : </strong>월급</span>
                                        <span class="bg_none"><strong>근무지역 : </strong>전남 목포시</span>
                                        <span class="db bg_none"><strong>키워드 : </strong>전담인력,노인<!--HS-->일자리</span>
                                        <em>홈 &gt; 구인구직 &gt; 채용정보</em>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <a href="/">이랜드하당노인복지관</a>
                                    </dt>
                                    <dd>
                                        <p><!--채용제목-->하당노인복지관 노인<!--HS-->일자리<!--HE--> 및 사회활동지원사업 전담...</p>
                                        <span><strong>마감일 : </strong>2017-12-15(금)</span>
                                        <span><strong>경력 : </strong>경력무관</span>
                                        <span><strong>학력 : </strong>고졸 ~ 대졸(4년)</span>
                                        <span><strong>고용형태 : </strong>월급</span>
                                        <span class="bg_none"><strong>근무지역 : </strong>전남 목포시</span>
                                        <span class="db bg_none"><strong>키워드 : </strong>전담인력,노인<!--HS-->일자리</span>
                                        <em>홈 &gt; 구인구직 &gt; 채용정보</em>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <a href="/">이랜드하당노인복지관</a>
                                    </dt>
                                    <dd>
                                        <p><!--채용제목-->하당노인복지관 노인<!--HS-->일자리<!--HE--> 및 사회활동지원사업 전담...</p>
                                        <span><strong>마감일 : </strong>2017-12-15(금)</span>
                                        <span><strong>경력 : </strong>경력무관</span>
                                        <span><strong>학력 : </strong>고졸 ~ 대졸(4년)</span>
                                        <span><strong>고용형태 : </strong>월급</span>
                                        <span class="bg_none"><strong>근무지역 : </strong>전남 목포시</span>
                                        <span class="db bg_none"><strong>키워드 : </strong>전담인력,노인<!--HS-->일자리</span>
                                        <em>홈 &gt; 구인구직 &gt; 채용정보</em>
                                    </dd>
                                </dl>
                                <span class="TxtR"><a href="employmentInformation">채용정보 검색결과 더보기 +</a></span>
                            </div>
                            <h2>공공일자리 <span>총 1,1000건</span></h2>
                            <div class="job_box">
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공일자리</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공일자리</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공일자리</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공일자리</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공일자리</em>
                                    </li>
                                </ul>
                                <span class="TxtR"><a href="employmentInformation">공공일자리 검색결과 더보기 +</a></span>
                            </div>
                            <h2>공공기관채용정보 <span>총 1,1000건</span></h2>
                            <div class="job_box">
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공기관채용정보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공기관채용정보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공기관채용정보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공기관채용정보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공공기관채용정보</em>
                                    </li>
                                </ul>
                                <span class="TxtR"><a href="employmentInformation">공공기관채용정보 검색결과 더보기 +</a></span>
                            </div>
                            <h2>공채속보 <span>총 1,1000건</span></h2>
                            <div class="job_box">
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공채속보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공채속보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공채속보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공채속보</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 공채속보</em>
                                    </li>
                                </ul>
                                <span class="TxtR"><a href="employmentInformation">공채속보 검색결과 더보기 +</a></span>
                            </div>
                            <h2>게시판 <span>총 1,1000건</span></h2>
                            <div class="job_box">
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 게시판</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 게시판</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 게시판</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 게시판</em>
                                    </li>
                                </ul>
                                <ul class="img_list">
                                    <li>
                                        <a href="/" title="" target="_blank">
                                            <span class="title">[공지사항]<strong>2014년 전라남도 일자리 취업 박람회 개최</strong></span>
                                            <span class="date">2018.10.11</span>
                                            <p>행사명 : 2017년 전남동부권 <!--HS-->일자리<!--HE--> 박람회 일 시 : 2017. 11. 16(목) 10:00~17:00 장 소 : 순천팔마체육관 주 최 : 여수고용노동지청, 전라남도, 광양만권경제자유구역청,한국산업단지공단여수광양지사,전남테크노파크 주 관 : 광양만권<!--HS-->일자리<!--HE-->사업단 ※ 자세한 사항은 첨부파일 및 http://2017jnjobfair.com/ 으로 문의 바랍니다.
                                            </p>
                                        </a>
                                        <em>홈 &gt; 구인구직 &gt; 게시판</em>
                                    </li>
                                </ul>
                                <span class="TxtR"><a href="employmentInformation">게시판 검색결과 더보기 +</a></span>
                            </div>
                        </div>
                        <!--페이징-->
                        <div class="paging_wrap">
                            <div class="tac">
                                <ul class="pagination">
                                    <li class="paginate_button active"><a href="#" title="현재" class="on">1</a></li>
                                    <li class="paginate_button"><a href="#" title="다음" onclick="goBdPage(2); return false;">2</a>
                                </ul>
                            </div>
                        </div>
                        <!--//페이징-->
                    </div>
                    <article class="rangking">
                        <!--랭킹메뉴-->
                        <article class="group">
                            <h3>내가 찾은 검색어</h3>
                            <ul class="list">
                                <li>
                                    <small>1</small>
                                    <a href="javascript:;" onclick="">
                                        <span>일자리</span>
                                    </a>
                                </li>
                            </ul>
                        </article>
                        <article class="group">
                            <h3>많이 찾는 메뉴</h3>
                            <ul class="list">
                                <li>
                                    <small>1</small>
                                    <a href="javascript:;" onclick="">
                                        <span>교육훈련 &gt; 지원제도</span>
                                    </a>
                                </li>
                                <li>
                                    <small>2</small>
                                    <a href="javascript:;" onclick="">
                                        <span>구인구직 &gt; 게시판</span>
                                    </a>
                                </li>
                                <li>
                                    <small>3</small>
                                    <a href="javascript:;" onclick="">
                                        <span>일자리지원 &gt; 마을로</span>
                                    </a>
                                </li>
                                <li>
                                    <small>4</small>
                                    <a href="javascript:;" onclick="">
                                        <span>구인구직 &gt; 채용공고</span>
                                    </a>
                                </li>
                                <li>
                                    <small>5</small>
                                    <a href="javascript:;" onclick="">
                                        <span>구인구직 &gt; 게시판</span>
                                    </a>
                                </li>
                            </ul>
                        </article>
                        <article class="group">
                            <h3>인기검색어</h3>
                            <ul class="menu">
                                <li class="on"><a href="#daily">일간</a></li>
                                <li><a href="#weekly">주간</a></li>
                            </ul>
                            <ul class="list">
                                <li>
                                    <small>1</small>
                                    <a href="javascript:;" onclick="">
                                        <span>박람회</span>
                                    </a>
                                </li>
                                <li>
                                    <small>2</small>
                                    <a href="javascript:;" onclick="">
                                        <span>사무직</span>
                                    </a>
                                </li>
                                <li>
                                    <small>3</small>
                                    <a href="javascript:;" onclick="">
                                        <span>사무직</span>
                                    </a>
                                </li>
                                <li>
                                    <small>4</small>
                                    <a href="javascript:;" onclick="">
                                        <span>사무직</span>
                                    </a>
                                </li>
                                <li>
                                    <small>5</small>
                                    <a href="javascript:;" onclick="">
                                        <span>사무직</span>
                                    </a>
                                </li>
                            </ul>
                        </article>
                        <article class="group">
                            <h3>실시간 검색어</h3>
                            <ul class="list">
                                <li>
                                    <small>1</small>
                                    <a href="javascript:;" onclick="">
                                        <span>박람회</span>
                                    </a>
                                </li>
                                <li>
                                    <small>2</small>
                                    <a href="javascript:;" onclick="">
                                        <span>도시기본계획</span>
                                    </a>
                                </li>
                                <li>
                                    <small>3</small>
                                    <a href="javascript:;" onclick="">
                                        <span>채용공고</span>
                                    </a>
                                </li>
                                <li>
                                    <small>4</small>
                                    <a href="javascript:;" onclick="">
                                        <span>봉사</span>
                                    </a>
                                </li>
                                <li>
                                    <small>5</small>
                                    <a href="javascript:;" onclick="">
                                        <span>임대주택</span>
                                    </a>
                                </li>
                            </ul>
                        </article>
                        <!--//랭킹메뉴-->
                    </article>
                </div>
            </div>
            <!--//통합검색-->
        </div>
    </div>
    <footer id="footer">
        <div class="footWrap">
            <ul class="linkArea">
                <li><a href="/" target="_blank" title="새창으로 열림">개인정보보호정책</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">이메일무단수집거부</a></li>
                <li><a href="/" target="_blank" title="새창으로 열림">회원약관</a></li>
            </ul>
            <aside class="relate_site">
                <div>
                    <a href="#" class="button">관련사이트 바로가기<span></span></a>
                    <ul style="display: none;">
                        <li><a href="http://www.jeonnam.go.kr" target="_blank" title="새창으로 열림">전라남도청</a></li>
                        <li><a href="http://www.jepa.kr/" target="_blank" title="새창으로 열림">전라남도 중소기업진흥원</a></li>
                    </ul>
                </div>
            </aside>
            <div class="footer_box">
                <span class="logo"><img src="${pageContext.request.contextPath}/webNet/images/common/f_logo.png" alt="일자리통합정보망"></span>
                <div class="footer_link">
                    <address>(우)58565 전라남도 무안군 삼향읍 오룡1길 37 (1층)    /   대표전화 061-287-1142~3     /   팩스번호 061-287-1146</address>
                    <p class="copyright">COPYRIGHT(C) 2018 Jeollanam-do. All rights reserved</p>
                </div>
            </div>
        </div>
    </footer>
    <a href="#wrap" class="topBt over" title="본문상단으로 이동">TOP</a>
</div>

</body>
</html>