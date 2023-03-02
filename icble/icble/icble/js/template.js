
// navbar background color change on scroll

$(window).scroll(function () {
    var scroll = $(window).scrollTop();
    if (scroll < 5) {
        $('.fixed-top').css('background', '#fixed-top');
    } else {
        $('.fixed-top').css('background', '#fixed-top');

    }

    if (scroll < 5) {
        $('.fixed-top').css('box-shadow', 'none');
    } else {
        $('.fixed-top').css('box-shadow', '1px 2px 6px #000');

    }

    if (scroll < 5) {
        $('.nav-link').css('color', '#000');
    } else {
        $('.nav-link').css('color', '#000');

    }


    if (scroll < 5) {
        $('#drop').css('color', '#000');
    } else {
        $('#drop').css('color', '#000');

    }



});

$(document).ready(function () {
    var owl = $('.loop');
    owl.owlCarousel({
        stagePadding: 0,
        margin: 0,
        nav: true,
        loop: true,
        autoplay: true,
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 1
            },
            768: {
                items: 2
            },
            980: {
                items: 2
            },
            1152: {
                items: 2
            },
            1240: {
                items: 2
            }
        }
    })
});


$(document).ready(function () {
    var owl = $('.loop1');
    owl.owlCarousel({
        stagePadding: 0,
        margin: 0,
        nav: true,
        loop: true,
        autoplay: true,
        responsive: {
            0: {
                items: 1
            },
            480: {
                items: 1
            },
            768: {
                items: 2
            },
            980: {
                items: 3
            },
            1152: {
                items: 3
            },
            1240: {
                items: 3
            }
        }
    })
});
$(document).ready(function () {
    $('ul li a').click(function () {
        $('li a').removeClass("active");
        $(this).addClass("active");
    });
});
