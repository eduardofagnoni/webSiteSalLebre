// a key map of allowed keys
var allowedKeys = {
    37: 'left',
    38: 'up',
    39: 'right',
    40: 'down',
    65: 'a',
    66: 'b'
  };
  
  // the 'official' Konami Code sequence
  var konamiCode = ['up', 'up', 'down', 'down', 'left', 'right', 'left', 'right', 'b', 'a'];
  
  // a variable to remember the 'position' the user has reached so far.
  var konamiCodePosition = 0;
  
  // add keydown event listener
  document.addEventListener('keydown', function(e) {
    // get the value of the key code from the key map
    var key = allowedKeys[e.keyCode];
    // get the value of the required key from the konami code
    var requiredKey = konamiCode[konamiCodePosition];
  
    // compare the key with the required key
    if (key == requiredKey) {
  
      // move to the next key in the konami code sequence
      konamiCodePosition++;
  
      // if the last key is reached, activate cheats
      if (konamiCodePosition == konamiCode.length) {
        activateCheats();
        konamiCodePosition = 0;
      }
    } else {
      konamiCodePosition = 0;
    }
  });
  
  function activateCheats() {

    $(".cobertura-konami").animate({opacity:'show'},100);

    coelhoSprit4();
    $('.coelho-sprit-4').animateSprite('restart'); 

    function coelhoSprit4() {
        var currentFps = 12;    
            var animationSettingsLebre = {
                fps: currentFps,
                loop: false,
                autoplay: true,
                //duration:8000, 
                complete: function(){
                  $(".cobertura-konami").delay(2000).css({display:'none'});
                }               
            };        
        $('.coelho-sprit-4').animateSprite(animationSettingsLebre);        
    }  
  
    //alert("cheats activated");
  }