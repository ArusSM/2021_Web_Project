window.onload = function () {
    $(".s_t").hide();
    let status = false;
    $(".openBtn").on("click", function (e) {
        let idx = e.target.dataset.idx;
        let open = e.target.dataset.open;
        if (open == "false") {
            $(".s_t").eq(idx).stop().slideDown();
            e.target.dataset.open = true;
        }else {
            $(".s_t").eq(idx).stop().slideUp();
            e.target.dataset.open = false;
        }
        console.log("올라가떠여")
    });
}