


function animaBrilhoBotao(){
    /*define posicao inicial dos elementos*/
    $("button .bg").css({left:'-308px'});
    $("button .bg").delay((Math.random() * 3000) + 2000).animate({left:'150%'},2000,animaBrilhoBotao);
};
animaBrilhoBotao();

function animEsqueciASenha() {  
    $('#frmLogin').addClass('animated hinge');
    $('#frmLogin').delay(2000).animate({opacity:'hide'},100);
    $('#frmEsqueceuSenha').delay(2200).animate({opacity:'show'},100);
    $('#frmEsqueceuSenha').addClass('animated zoomIn');

    setTimeout(function() { limpaClasses(); }, 3000);
    
}

function lembreiASenha() {
    $('#frmEsqueceuSenha').addClass('animated rollOut');
    $('#frmEsqueceuSenha').delay(700).animate({opacity:'hide'},100);
    $('#frmLogin').delay(800).animate({opacity:'show'},100);
    $('#frmLogin').addClass('animated rollIn');

    setTimeout(function() { limpaClasses(); }, 1500);
}

function limpaClasses() {
    $('#frmEsqueceuSenha').removeClass('animated rollOut');
    $('#frmEsqueceuSenha').removeClass('animated zoomIn');
    $('#frmLogin').removeClass('animated rollIn');
    $('#frmLogin').removeClass('animated hinge');
    
}

/*Troca de senha e esqueci a senha - internas*/
function animEsqueciASenhaInt() {  
    $('#trocaDeSenha').addClass('animated fadeOutRight');
    $('#trocaDeSenha').delay(700).animate({opacity:'hide'},100);
    $('#esqueciASenha').delay(800).animate({opacity:'show'},100);
    $('#esqueciASenha').addClass('animated fadeInLeft');

    setTimeout(function() { limpaClassesInt(); }, 1500);
    
}

function lembreiASenhaInt() {
    $('#esqueciASenha').addClass('animated fadeOutRight');
    $('#esqueciASenha').delay(700).animate({opacity:'hide'},100);
    $('#trocaDeSenha').delay(800).animate({opacity:'show'},100);
    $('#trocaDeSenha').addClass('animated fadeInLeft');

    setTimeout(function() { limpaClassesInt(); }, 1500);
}

function limpaClassesInt() {
    $('#esqueciASenha').removeClass('animated fadeInLeft');
    $('#esqueciASenha').removeClass('animated fadeOutRight');
    $('#trocaDeSenha').removeClass('animated fadeInLeft');
    $('#trocaDeSenha').removeClass('animated fadeOutRight');
    
}

function tipoDeUsuario(selectObject) {              
    var value = selectObject.value;
    if(value==1 || value==2) {
        $("#divHotelSelect").css({display:'none'});
    } else {
        $("#divHotelSelect").css({display:'block'});
    };
}
