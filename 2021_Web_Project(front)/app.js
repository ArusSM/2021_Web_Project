let toBlack = false;

window.onload = function () {
    $(".s_t").hide();
    $(".GamePopup").hide();
    $(".recGame").hide();
    $(".darkcurtain").hide();
    let status = false;
    $(".openBtn").on("click", function (e) {
        
        let idx =  e.currentTarget.dataset.idx;
        let open = e.currentTarget.dataset.open;
        if (open == "false") {
            $(".s_t").eq(idx).stop().slideDown();
            e.currentTarget.dataset.open = true;
            $(this).html(`<i class="fas fa-minus"></i>`);
        }else {
            $(".s_t").eq(idx).stop().slideUp();
            e.currentTarget.dataset.open = false;
            $(this).html(`<i class="fas fa-plus"></i>`);
        }
    });


    $("#isBlack").on("input", function(){
        console.log("fdsa");
        darkMode();
    });
    

    $(".card").on("click", function(e) {
        $(".GamePopup").show("slow");
        $(".darkcurtain").show();
    }) 

    $(".closePop").click(function(){
        $(".GamePopup").hide("slow");
        $(".GamePopup").empty();
        $(".darkcurtain").hide();
    });

    $(".recommend").click(function(){
        $(".recGame").show("slow");
        $(".darkcurtain").show();
    })

    $(".closeRec").click(function(){
        $(".recGame").hide("slow");
        $(".darkcurtain").hide();
    });

    $(".card").click(function() {
        var GamePop = ` <div class="popTop">
                <div class="left">
                    <img src="${list.get(0).img}" alt="">
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
                    <div class="revName">${list.get(0).title }</div><!-- 게임 이름 -->
                    <div class="revLink"><a href="${list.get(0).gameLink }" target="_blank">게임 링크</a></div> <!-- 게임 링크 -->
                    <div class="revRDate">${list.get(0).releaseDate }</div> <!-- Release date 출시일 -->
                    <div class="revPNum">${list.get(0).multiple}</div> <!-- Player Number 싱글 / 멀티 / 대규모 멀티 여부 -->
                </div>
            </div>
            <div class="mainReview"> <!-- 메인 리뷰 부분 -->

            </div>
            <div class="under white">
                <div class="youtube white"><a href="${list.get(0).youtube}" target="_blank">유튜브 링크</a></div>
                <button class="closePop">닫기</button> `

                $('.GamePopup').append();
    });
        
    
    
}

function darkMode() {

    if(toBlack){
        $(".black").removeClass("black").addClass("white");
        toBlack = false;
    } else {
        $(".white").removeClass("white").addClass("black");
        toBlack = true;
    }
}

function getId() {
    let idx =  e.currentTarget.dataset.idx;

}

// function convert( type , white , black , time = 400 ){

//     // type : true => 흰색 -> 검정
//     // type : false => 검정 -> 흰색

//     // 400밀리 세컨드동안 255를 움직여야하면 10밀리 세컨드동안에는 몇을 움직여야하노? 2550 / 400
//     // 400밀리 세컨드동안 255를 움직여야하면 1밀리 세컨드 동안에는 255/400
//     // n밀리 세컨드동안 a 만큼 움직이려면 10밀리 동안에는 얼마나 가야하나? a * 10 / n

//     const origin = type ? white : black;
//     const target = type ? black : white;
//     const cycle = 10;

//     let now = origin;
//     let speed = (target - origin) * cycle / time;
    
//     const frame = setInterval(() => {
        
//         $(".convert_eff").css({ backgroundColor : `rgb( ${now} , ${now} , ${now} )` });
//         now += speed;
//         if(now == target) clearInterval(frame);

//     }, cycle);

// }