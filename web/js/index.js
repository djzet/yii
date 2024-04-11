setInterval(()=>{
    $.ajax({
        method: "GET",
    })
        .done(function( countAjax ) {
            if ($("#requests span").text() !== countAjax){
                $("#requests span").text(countAjax);
            }
        });
}, 5000)
$( ".thumbnail img" ).mouseover(function() {
    if ($(this).attr('src') === $(this).attr('data-img-to')) return;
    $(this ).animate({
        width: "0%",
        height: "0%",
    }, 200, function (){
        $(this).attr('src', $(this).attr('data-img-to'));
    }).animate({
        width: "100%",
        height: "100%",
    }).mouseleave(function (){
        if ($(this).attr('src') === $(this).attr('data-img-after')) return;
        $(this ).animate({
            width: "0%",
            height: "0%"
        }, 200, function (){
            $(this).attr('src', $(this).attr('data-img-after'));
        }).animate({
            width: "100%",
            height: "100%",
        });
    });
});