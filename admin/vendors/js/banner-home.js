
$(document).ready(function(){

    var percent = 0, bar = $('.transition-timer-carousel-progress-bar'), crsl = $('#myCarousel');
    function progressBarCarousel() {
        bar.css({width:percent+'%'});
        percent = percent +0.5;
            
            if (percent>100) {
              percent=0;
              crsl.carousel('next');
            }   

    }
    crsl.carousel({
        interval: false,
        pause: true
    }).on('slid.bs.carousel', function () {});var barInterval = setInterval(progressBarCarousel, 50);
    /*crsl.hover(
        function(){
            clearInterval(barInterval);
        },
        function(){
            barInterval = setInterval(progressBarCarousel, 30);
    })*/

    $(".scroll a").click(function(event){
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 800);
    });

})

/*------------------------------------
  slider banner
------------------------------------*/
var slider = $('.bxslider').bxSlider({
    pagerCustom: '#bx-pager',
    nextSelector: '#slider-next',
    prevSelector: '#slider-prev',
    nextText: 'Onward →',
    prevText: '← Go back',
    auto: true,
    pause: 8000,
    pager: true,
});

$('a.pager-prev').click(function () {
    var current = slider.getCurrentSlide();
    slider.goToPrevSlide(current) - 1;
});
$('a.pager-next').click(function () {
    var current = slider.getCurrentSlide();
    slider.goToNextSlide(current) + 1;
});
/*------------------------------------
  /slider banner
------------------------------------*/