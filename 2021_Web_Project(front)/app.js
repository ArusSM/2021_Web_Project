window.onload = function () {
    $(".s_t").hide();
    $(".GamePopup").hide();
    $(".recGame").hide();
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
        console.log("올라가떠여")
    });

    $(".card").on("click", function(e) {
        $(".GamePopup").show("slow");
    }) 

    $(".closePop").click(function(){
        $(".GamePopup").hide("slow");
    });

    $(".recommend").click(function(){
        $(".recGame").show("slow");
    })

    $(".closeRec").click(function(){
        $(".recGame").hide("slow");
    });
        
    
    
}