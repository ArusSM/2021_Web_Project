let toBlack = false;

window.onload = function () {
    $(".s_t").hide();
    $(".GamePopup").hide();
    $(".recGame").hide();
    $(".darkcurtain").hide();
    let status = false;
    $(".tabs").on("click", function (e) {

        let idx = e.currentTarget.dataset.idx;
        let open = e.currentTarget.dataset.open;

        if (open == "false") {
            $(".s_t").eq(idx).stop().slideDown();
            e.currentTarget.dataset.open = true;
            $(".openBtn").eq(idx).html(`<i class="fas fa-minus"></i>`);
        } else {
            $(".s_t").eq(idx).stop().slideUp();
            e.currentTarget.dataset.open = false;
            $(".openBtn").eq(idx).html(`<i class="fas fa-plus"></i>`);
        }
        console.log("올라가떠여")
    });

    $("#isBlack").on("input", function () {
        console.log("fdsa");
        darkMode();
    });


    $(".card").on("click", function (e) {
        $(".GamePopup").show("slow");
        $(".darkcurtain").show();
    })

    $(".closePop").click(function () {
        $(".GamePopup").hide("slow");
        $(".darkcurtain").hide();
    });

    $(".recommend").click(function () {
        $(".recGame").show("slow");
        $(".darkcurtain").show();
    })

    $(".closeRec").click(function () {
        $(".recGame").hide("slow");
        $(".darkcurtain").hide();
    });

    


}

function darkMode() {

    if (toBlack) {
        $(".black").removeClass("black").addClass("white");
        toBlack = false;
    } else {
        $(".white").removeClass("white").addClass("black");
        toBlack = true;
    }
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