function brBt() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt .bg").css({left:'-200px'});
    $(".btnExtBt .bg").delay((Math.random() * 3000) + 2000).animate({left:'150%'},2000,brBt);
};
brBt();

function brBt2() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt .bg2").css({left:'-200px'});
    $(".btnExtBt .bg2").delay((Math.random() * 3500) + 3000).animate({left:'150%'},2200,brBt2);
};
brBt2();

function brBt3() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt .bg3").css({left:'-200px'});
    $(".btnExtBt .bg3").delay((Math.random() * 3000) + 2000).animate({left:'150%'},2000,brBt3);
};
brBt3();


function brBt_min() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt-min .bg").css({left:'-200px'});
    $(".btnExtBt-min .bg").delay((Math.random() * 3000) + 2000).animate({left:'150%'},2000,brBt_min);
};
brBt_min();

function brBt2_min() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt-min .bg2").css({left:'-200px'});
    $(".btnExtBt-min .bg2").delay((Math.random() * 3500) + 3000).animate({left:'150%'},2200,brBt2_min);
};
brBt2_min();

function brBt3_min() {
    /*define posicao inicial dos elementos*/
    $(".btnExtBt-min .bg3").css({left:'-200px'});
    $(".btnExtBt-min .bg3").delay((Math.random() * 3000) + 2000).animate({left:'150%'},2000,brBt3_min);
};
brBt3_min();
