

function abreConteudosInterno(nomeDaPagina) {    
    $(".loading").css({display:'block'},100);
    $("#chamaIncludeEsqueciASenha").load(nomeDaPagina);
}
//reinicia contador
reiniciarContadorSessao();



function topTop(){
    var totop = $(window).scrollTop()-8;
        if(totop <= 0){
            clearInterval(idInterval);
        }else{
            totop--;
            $(window).scrollTop(totop);
        }
}
function levTop(){
    idInterval = setInterval('topTop();', 1);
}