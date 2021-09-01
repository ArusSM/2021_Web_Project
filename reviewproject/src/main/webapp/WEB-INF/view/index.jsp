<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
                crossorigin="anonymous" />
            <link rel="stylesheet" href="/resources/css/style.css">
            <script src="/resources/js/jquery-3.3.1.js"></script>
            <script src="/resources/js/app.js"></script>
        </head>

        <body class="white">
            <div class="container white">
                <header>
                    <img src="/resources/images/Logo.png" alt=""> 
                    <label class="switch"> <input type="checkbox" id="isBlack">
                        <span class="slider"></span>
                    </label>
                    <div class="recommend">게임 추천하기</div>

                </header>
                <section class="game_section white">
                    <div class="game_container white">
                        <div class="tabs white" data-idx="0" data-open="false">
                            <h2>FPS(First Person Shooter)</h2>
                            <div class="openBtn white">
                                <i class="fas fa-plus"></i>
                            </div>
                        </div>
                        <div class="s_t white">
                            <div class="inv white">
                                <c:forEach var="i" begin="0" end="${fpsList.size()-1}" step="1">
                                    <!-- 포이치로 반복함. -->
                                    <div class="card white" data-idx="${fpsList.get(i).id}"
                                        data-category="${fpsList.get(i).category}">
                                        <img src="${fpsList.get(i).img}" alt="게임 이미지">

                                    </div>

                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="game_container white">
                        <div class="tabs white" data-idx="1" data-open="false">
                            <h2 id="1">RPG(Role-Playing Game)</h2>
                            <div class="openBtn white">
                                <i class="fas fa-plus"></i>
                            </div>
                        </div>
                        <div class="s_t white">
                            <div class="inv white">
                                <c:forEach var="i" begin="0" end="${rpgList.size()-1}" step="1">
                                    <!-- 포이치로 반복함. -->
                                    <div class="card white" data-idx="${rpgList.get(i).id}"
                                        data-category="${rpgList.get(i).category}">
                                        <img src="${rpgList.get(i).img}" alt="게임 이미지">
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </section>
                <footer class="white">
                    <div>Copyright 2021. Ayrus All pictures cannot be copied
                        without permission.</div>
                </footer>
                <div class="recGame white">
                    <!-- 게임 추천하기 팝업 -->
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

                    <button class="closePop">닫기</button>
                </div>
            </div>
            <a href="/db">db</a>
        </body>


        <script type="text/javascript">
            let list = [];

            <c:forEach items="${list}" var="rpgItem">
                list.push(
                {id: `${rpgItem.id}`,
                img: `${rpgItem.img}`,
                title: `${rpgItem.title}`,
                gameLink: `${rpgItem.gameLink}`,
                releaseDate: `${rpgItem.releaseDate}`,
                multiple: `${rpgItem.multiple}`,
                recom: `${rpgItem.recom}`,
                norecom: `${rpgItem.norecom}`,
                content: `${rpgItem.content}`,
                category: `${rpgItem.category}`} );
            </c:forEach>
            let toBlack = false;

            $("#isBlack").on("input", function () {
                console.log("fdsa");
                darkMode();
            });

            function darkMode() {

                if (toBlack) {
                    $(".black").removeClass("black").addClass("white");
                    toBlack = false;
                } else {
                    $(".white").removeClass("white").addClass("black");
                    toBlack = true;
                }
            }

            $(".card").click(function (e) {
                $(".gpp").hide();
                let idx = e.currentTarget.dataset.idx;
                let category = e.currentTarget.dataset.category;
                let selectedItem = list.find(item => item.id == idx);
                console.log(selectedItem);
                let pop = document.createElement("div");
                pop.classList.add("gpp");
                // if(category=="fps"){}
                if (!toBlack) {
                    pop.innerHTML = ` <div class="popTop">
                        <div class="left white">
                            <img src="`+ selectedItem.img + `" alt="">
                            <div class="revReco">
                                <div data-idx="`+ selectedItem.id + `" class="reco">
                                    <i class="far fa-thumbs-up"></i>
                                    : <span>`+ selectedItem.recom + `</span>
                                </div>
                                <div data-idx="`+ selectedItem.id + `" class="noReco">
                                    <i class="far fa-thumbs-down"></i>
                                    : <span>`+ selectedItem.norecom + `</span>
                                </div>
                            </div>
                        </div>
                        <div class="right white">
                            <div class="revName">`+ selectedItem.title + `</div><!-- 게임 이름 -->
                            <div class="revLink"><a href="`+ selectedItem.gameLink + `" target="_blank">게임 링크</a></div> <!-- 게임 링크 -->
                            <div class="revRDate">`+ selectedItem.releaseDate + `</div> <!-- Release date 출시일 -->
                            <div class="revPNum">`+ selectedItem.multiple + `</div> <!-- Player Number 싱글 / 멀티 / 대규모 멀티 여부 -->
                        </div>
                    </div>
                    <div class="mainReview white"> <!-- 메인 리뷰 부분 -->
                            `+ selectedItem.content + `
                    </div>
                    
                        `;
                } else {
                    pop.innerHTML = ` <div class="popTop">
                        <div class="left black">
                            <img src="`+ selectedItem.img + `" alt="">
                            <div class="revReco">
                                <div data-idx="`+ selectedItem.id + `" class="reco">
                                    <i class="far fa-thumbs-up"></i>
                                    : <span>`+ selectedItem.recom + `</span>
                                </div>
                                <div data-idx="`+ selectedItem.id + `" class="noReco">
                                    <i class="far fa-thumbs-down"></i>
                                    : <span>`+ selectedItem.norecom + `</span>
                                </div>
                            </div>
                        </div>
                        <div class="right black">
                            <div class="revName">`+ selectedItem.title + `</div><!-- 게임 이름 -->
                            <div class="revLink"><a href="`+ selectedItem.gameLink + `" target="_blank">게임 링크</a></div> <!-- 게임 링크 -->
                            <div class="revRDate">`+ selectedItem.releaseDate + `</div> <!-- Release date 출시일 -->
                            <div class="revPNum">`+ selectedItem.multiple + `</div> <!-- Player Number 싱글 / 멀티 / 대규모 멀티 여부 -->
                        </div>
                    </div>
                    <div class="mainReview black"> <!-- 메인 리뷰 부분 -->
                            `+ selectedItem.content + `
                    </div>
                    
                        `;
                }
                /* 컷 */
                $('.GamePopup').append(pop);
                $('.reco').click(function () {
                    let idx = $(this).data('idx');
                    console.log(idx);
                    $.ajax({
                        type: "POST"
                        , url: "/recom"
                        , data: { idx }
                        , success: (data) => {
                            let now = $(this).find('span').html();
                            console.log($(this));
                            $(this).find('span').html(now * 1 + 1);
                        }
                        , error: (data) => {
                            alert("error");
                        }
                    });
                });

                $('.noReco').click(function () {
                    let idx = $(this).data('idx');
                    console.log(idx);
                    $.ajax({
                        type: "POST"
                        , url: "/norecom"
                        , data: { idx }
                        , success: (data) => {
                            let now = $(this).find('span').html();
                            console.log($(this));
                            $(this).find('span').html(now * 1 + 1);
                        }
                        , error: (data) => {
                            alert("error");
                        }
                    });
                });
            });
        </script>

        </html>