<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="/resources/js/jquery-3.3.1.js"></script>
    <script src="/resources/js/app.js"></script>
</head>


<body class="white">
    <div class="container white">
        <header>            
                <img src="/resources/images/Logo.png" alt="">
                <label class="switch">
                    <input type="checkbox" id="isBlack">
                    <span class="slider"></span>
                  </label>
                <div class="recommend">게임 추천하기</div>
                
        </header>
        <section class="game_section white">
            <div class="game_container white">
                <div class="tabs white">
                    <h2>장르</h2>
                    <div class="openBtn white" data-idx="0" data-open="false"><i class="fas fa-plus"></i></div>
                </div>
                <div class="s_t white">
                    <div class="inv white">
                    <c:forEach var="i" begin="0" end="${list.size()-1}" step="1" >
                        <div class="card white" data-idx="${list.get(i).id }">
                            <img src="${list.get(i).img}" alt="게임 이미지">
                            <div class="text-box">
                                <div>${list.get(i).title}</div>
                                <div>추천 : ${list.get(i).recom}</div>
                                <div>비추천 : ${list.get(i).norecom }</div>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="card"></div>
                        <div class="card"></div>
                    </div>
                </div>
            </div>
            <div class="game_container white">
                <div class="tabs white">
                    <h2 id="1">장르</h2>
                    <div class="openBtn white" data-idx="1" data-open="false"><i class="fas fa-plus"></i></div>
                </div>
                <div class="s_t white">
                    <div class="inv white">
                        <div class="card white">
                            <img src="/resources/images/pubg.jpg" alt="게임 이미지">
                            <div class="text-box">
                                <div>게임제목</div>
                                <div>추천 : 0</div>
                                <div>비추천 : 0</div>
                            </div>
                        </div>
                        <div class="card"></div>
                        <div class="card"></div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="white">
            <div>Copyright 2021. Ayrus All pictures cannot be copied without permission.</div>
        </footer>
        <div class="recGame white"> <!-- 게임 추천하기 팝업 -->
            <p>게임 추천하기</p>
            <p>받을 이메일 : kimjng4@gmail.com</p>
            <p>양식</p>
            <hr>
            <p>게임 제목</p>
            <p>장르</p>
            <p>가격 ( 부분유료화의 경우에도 표기 )</p>
            <p>대표적 태그 3개 ( 스팀게임이 아닌 경우 X )</p>
            <hr>
            <p>의미없는 사적인 메일은 차단의 사유가 됩니다.</p>
            <button class="closeRec">닫기</button>
        </div>
        <div class="darkcurtain"></div>
        <div class="GamePopup white">
                <script type="text/javascript">
                $(".card").click(function (e) {
                	$(".gpp").hide();
					let idx = e.currentTarget.dataset.idx;
					let pop = document.createElement("div");
					pop.classList.add("gpp");
					pop.innerHTML =  ` <div class="popTop">
		                <div class="left">
		                    <img src="${list.get(idx).img}" alt="">
		                    <div class="revReco">
		                        <div class="reco">
		                            <i class="far fa-thumbs-up"></i>
		                            : 0
		                        </div>
		                        <div class="noReco">
		                            <i class="far fa-thumbs-down"></i>
		                            : 0
		                        </div>
		                    </div>
		                </div>
		                <div class="right white">
		                    <div class="revName">${list.get(idx).title }</div><!-- 게임 이름 -->
		                    <div class="revLink"><a href="${list.get(idx).gameLink }" target="_blank">게임 링크</a></div> <!-- 게임 링크 -->
		                    <div class="revRDate">${list.get(idx).releaseDate }</div> <!-- Release date 출시일 -->
		                    <div class="revPNum">${list.get(idx).multiple}</div> <!-- Player Number 싱글 / 멀티 / 대규모 멀티 여부 -->
		                </div>
		            </div>
		            <div class="mainReview"> <!-- 메인 리뷰 부분 -->

		            </div>
		            <div class="under white">
		                <div class="youtube white"><a href="${list.get(idx).youtube}" target="_blank">유튜브 링크</a></div>
		                `

		                $('.GamePopup').append(pop);
		    });
                
                </script>
                <button class="closePop">닫기</button> 
        </div>
    </div>
    <a href="/db">db</a>
</body>

</html>