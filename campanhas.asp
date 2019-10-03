<!-- #include file="layout/cod-head.asp" -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="EFWeb - eduardofagnoni@gmail.com">
    <title></title>
<!-- #include file="layout/style-head.asp"-->
<!-- CSS Custom page -->
<link rel="stylesheet" type="text/css" href="stylesheet/styleCampanhas.css">
<!-- #include file="layout/menu.asp"-->

<section class="banner-internas" style="background: url(images/topo-campanha.jpg) no-repeat center top; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1>Campanha</h1>
			</div>
		</div>
	</div>
</section>

<main>	
    
    <section>
        <div class="container">
            <div class="texto-tabela">
                <div class="coluna">
                    <h2 class="wow fadeInUp animate" data-wow-delay=".15s">Sal Lebre,<br>o sal número UMMMMM<br>do Brasil!</h2>
                </div>
                <div class="coluna">
                    <p class="wow fadeInUp animate" data-wow-delay=".45s">Sal Lebre é o sal que está na mesa e na cabeça do brasileiro.
Confira nossa mais recente campanha publicitária.</p>                    
                </div>
            </div>
        </div>
    </section>    

    <section class="video-campanha">
        <div class="pelicula-transparencia wow fadeInLeft animate" data-wow-delay=".15s">
            <div class="content-texto wow fadeInRight animate" data-wow-delay=".65s">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</p>
            </div>           
        </div>
        <div class="play-video wow fadeInUp animate" data-wow-delay=".75s" data-toggle="modal" data-target="#myModal"  onclick="abreFoto(1)"><span class="fa fa-play"></span></div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <button type="button" class="close-video-manifesto" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <div class="iframe" id="fotoaqui"></div>
        </div>
    </section>

    <section class="video-making-off">
        <div class="esquerda"></div>
        <div class="direita"></div>
        <div class="text-video-making-off wow fadeInUp animate" data-toggle="modal" data-target="#myModal"  onclick="abreFoto(2)"><span class="play-video-making-off"><span class="fa fa-play"></span></span>  &nbsp;&nbsp;&nbsp;confira o MAKING OFF</div>
    </section>
    
    

<div class="coelho"></div>
<div class="coelho-branco"></div>
<div class="coelho-sprit-3"></div>
<div class="coelho-sprit-3-branco"></div>

<section class="cobertura-konami">
    <!--
    <div class="bg-video">
        <video width="100%" height="110%" autoplay loop src="assets/videobg/video.mp4"></video>
    </div>
    -->
    <div class="coelho-sprit-4"></div>
</section>


</main>
<!-- #include file="layout/footer.asp"-->
<!-- #include file="layout/cod-footer.asp"-->

<!-- ************************************************************************************************
*****************************************************************************************************
******                                                                                         ******
******      Abaixo estou usando o bootstrap.js sem estar minimizado, algumas áres foram        ******
******      alteradas para quando a janela modal for fechada, existir uma chamada para a       ******
******      função fechaFoto() - Caso outra página precisar usar o bootstrap.js a função       ******
******      fechaFoto() precisa estar presente, mesmo que vazia, caso contrário o modal        ******
******      não vai funcionar corretamente. Para páginas que não precisar fechar vídeos        ******
******      usar a versão do bootstrap minimizada, que é a original.                           ******
******                                                                                         ******
*****************************************************************************************************
************************************************************************************************* -->
<script src="bootstrap/js/bootstrap.js"></script>


<script>
// *******************************************************************************
// função de controle de popups das fotos
// *******************************************************************************
function abreFoto(idfoto) {
    var objDivPai = document.getElementById("fotoaqui");
    var Teste = "<iframe id='iframe' src='_carregaVideo.asp?id="+idfoto+"' scrolling='no' frameborder='0' width='100%' ></iframe>";
    objDivPai.innerHTML = Teste;            
}
function fechaFoto() {

    var objDivPai = document.getElementById("fotoaqui");
    var Teste = "<iframe id='iframe' src='' scrolling='no' frameborder='0' width='100%' ></iframe>";
    objDivPai.innerHTML = Teste;    
}
// *******************************************************************************
// função de controle de popups das fotos
// *******************************************************************************
</script>