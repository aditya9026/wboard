$(function() {
    $(window).on("scroll", function() {
        if($(window).scrollTop() > 700) {
            $("#hub-nav-top").addClass("active");
        } else {
            //remove the background property so it comes transparent again (defined in your css)
            $("#hub-nav-top").removeClass("active");
        }
    });
});