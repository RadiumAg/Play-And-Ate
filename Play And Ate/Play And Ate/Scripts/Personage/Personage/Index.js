/*侧边栏收放JS*/
$(".newmember_leftside dl").children("dd").slideUp();
$(function () {
    $(".newmember_leftside dl")
        .children("dt")
        .click(function () {
            $(this).siblings("dd").slideToggle();
        })
});
/*侧边栏收放JS*/