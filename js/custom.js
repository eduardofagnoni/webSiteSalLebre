$(window).scroll(function() {
    var height = $(window).scrollTop();    
    if(height  > 50) {
        $("#semi-circulo").stop().animate({'top':'-200px'},400);
        $("#semi-circulo-menor").stop().animate({'top':'-194px'},400);
        $("#header-principal").stop().animate({'top':'-25px'},100);
        $(".logo-recolhido").stop().animate({opacity:'show'},100);
        $(".logo").stop().animate({opacity:'hide'},100);
        $(".open-menu").stop().animate({'top':'20px'});
    }
    if(height  < 50) {        
        $("#header-principal").stop().animate({'top':'0'},100);
        $(".logo-recolhido").stop().animate({opacity:'hide'},100);
        $(".logo").stop().animate({opacity:'show'},100);
        $("#semi-circulo").stop().animate({'top':'-147px'},400);
        $("#semi-circulo-menor").stop().animate({'top':'-138px'},400);
        $(".open-menu").stop().animate({'top':'10px'});
    }    
}); 








/*

var $window = $(window);
var $elem = $(".animation")



    function isScrolledIntoView($elem, $window) {
        var docViewTop = $window.scrollTop();
        var docViewBottom = docViewTop + $window.height();

        var elemTop = $elem.offset().top;
        var elemBottom = elemTop + $elem.height();

        return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
    }


var $elemTo = $(".animation2")
    function isScrolledIntoViewTo($elemTo, $window) {
        var docViewTop = $window.scrollTop();
        var docViewBottom = docViewTop + $window.height();

        var elemTop = $elemTo.offset().top;
        var elemBottom = elemTop + $elemTo.height();

        return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
    }


var $elemCoelho = $(".coelho")
    function isScrolledIntoViewCoelho($elemCoelho, $window) {
        var docViewTop = $window.scrollTop();
        var docViewBottom = docViewTop + $window.height();

        var elemTop = $elemCoelho.offset().top;
        var elemBottom = elemTop + $elemCoelho.height();

        return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
    }


$(document).on("scroll", function () {
    if (isScrolledIntoView($elem, $window)) {
        var currentFps = 12;
        var animationSettingsLebre = {
            fps: currentFps,
            loop: true,
            autoplay: true,    
        };
        $('.animation').animateSprite(animationSettingsLebre);
        $(".animation").animate({left:"100%"}, 4000);
    }

    if (isScrolledIntoViewTo($elemTo, $window)) {
        var currentFps = 12;
        var animationSettingsLebre = {
            fps: currentFps,
            loop: true,
            autoplay: true,    
        };
        $('.animation2').animateSprite(animationSettingsLebre);
        $(".animation2").animate({left:"100%"}, 4000);
    }


    if (isScrolledIntoViewCoelho($elemCoelho, $window)) {
        
    }
});


*/















/*******************************************************************
    Coelhos
*******************************************************************/ 
    function coelhoRandom() {        
        var currentFps = 12;    
            var animationSettingsLebre = {
                fps: currentFps,
                loop: false,
                autoplay: true,  
                complete: function(){
                    $(".coelho").delay(500).css({display:'none'});
                }                 
            };        
        $('.coelho').animateSprite(animationSettingsLebre);        
    }
    function coelhoRandomBranco() {        
        var currentFps = 12;    
            var animationSettingsLebre = {
                fps: currentFps,                
                loop: false,
                autoplay: true, 
                complete: function(){
                    $(".coelho-branco").delay(500).css({display:'none'});
                }                 
            };        
        $('.coelho-branco').animateSprite(animationSettingsLebre);        
    }

    function coelhoSprit3() {        
        var currentFps = 12;    
            var animationSettingsLebre = {
                fps: currentFps,
                loop: false,
                autoplay: true,
                complete: function(){
                    $(".coelho-sprit-3").delay(500).css({display:'none'});
                }                  
            };        
        $('.coelho-sprit-3').animateSprite(animationSettingsLebre);        
    }
    function coelhoSprit3Branco() {        
        var currentFps = 12;    
            var animationSettingsLebre = {
                fps: currentFps,
                loop: false,
                autoplay: true,  
                complete: function(){
                    $(".coelho-sprit-3-branco").delay(500).css({display:'none'});
                }                 
            };        
        $('.coelho-sprit-3-branco').animateSprite(animationSettingsLebre);        
    }

    

    /*******************************************************************
        Randomiza aparição do coelho 1
    *******************************************************************/ 
    function randRange(data) {
        var newTime = data[Math.floor(data.length * Math.random())];
        return newTime;
    }
    function toggleSomething() {
        //var timeArray = new Array(70000,90000,10000,20000,30000,40000,50000,60000);
        var timeArray = new Array(12000,17000,25000);
        var novaFunction = new Array(toggleSomething,toggleSomething2,toggleSomething3,toggleSomething4);

        $(".coelho-sprit-3").animate({opacity:'show'},100);
                
        coelhoSprit3(); 
        $('.coelho-sprit-3').animateSprite('restart');        

        clearInterval(timer);    
        timer = setInterval(randRange(novaFunction), randRange(timeArray));        
    }
    /****************************************************************** */
    function toggleSomething2() {
        //var timeArray = new Array(70000,90000,10000,20000,30000,40000,50000,60000);
        var timeArray = new Array(12000,17000,25000);
        var novaFunction = new Array(toggleSomething,toggleSomething2,toggleSomething3,toggleSomething4);  
        
        $(".coelho").animate({opacity:'show'},100);
        
        coelhoRandom();
        $('.coelho').animateSprite('restart');  

        clearInterval(timer);
        timer = setInterval(randRange(novaFunction), randRange(timeArray));        
    }
    /****************************************************************** */
    function toggleSomething3() {
        //var timeArray = new Array(70000,90000,10000,20000,30000,40000,50000,60000);
        var timeArray = new Array(12000,17000,25000);
        var novaFunction = new Array(toggleSomething,toggleSomething2,toggleSomething3,toggleSomething4);  
        
        $(".coelho-sprit-3-branco").animate({opacity:'show'},100);
        
        coelhoSprit3Branco(); 
        $('.coelho-sprit-3-branco').animateSprite('restart'); 

        clearInterval(timer);
        timer = setInterval(randRange(novaFunction), randRange(timeArray));        
    }
    function toggleSomething4() {
        //var timeArray = new Array(70000,90000,10000,20000,30000,40000,50000,60000);
        var timeArray = new Array(12000,17000,25000);
        var novaFunction = new Array(toggleSomething,toggleSomething2,toggleSomething3,toggleSomething4);        

        $(".coelho-branco").animate({opacity:'show'},100);
        
        coelhoRandomBranco();
        $('.coelho-branco').animateSprite('restart');      

        clearInterval(timer);
        timer = setInterval(randRange(novaFunction), randRange(timeArray));        
    }
    

    var timer = setInterval(toggleSomething, 8000);
    // 8000 = Initial timer when the page is first loaded
    /*******************************************************************
        Randomiza aparição do coelho 1 //
    *******************************************************************/ 

/*******************************************************************
    Coelhos //
*******************************************************************/ 