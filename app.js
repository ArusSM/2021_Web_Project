window.onload = function() {
    $(".s_t").hide();
    let status = false;
    $(".openBtn").eq(0).click(function() {
        if(status != true){
            status = true;
            $(".s_t").eq(0).stop().slideDown();
        }else {
            status = false;
            $(".s_t").eq(0).stop().slideUp();

        }
    });
}