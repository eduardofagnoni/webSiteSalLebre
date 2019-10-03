<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->



<!doctype html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title></title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        
        <!-- Description -->
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">

        <!-- Meta Facebook Markup -->
        <meta property="og:url" content="" >
        <meta property="og:type" content="" >
        <meta property="og:title" content="" >
        <meta property="og:description" content="" >
        <meta property="og:image" content="" >
        <meta property="og:image:type" content="image/jpeg" >
        <meta property="og:image:width" content="1200" >
        <meta property="og:image:height" content="1200" >        

        <!-- Fav and touch icons -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <meta name="application-name" content=""/>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="../assets/ico/favicon.png">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Animate.css -->
        <link href="bower_components/animate.css/animate.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <!-- normalize-css -->
        <!--<link href="vendors/normalize-css/normalize.css" rel="stylesheet">-->
        
        <!-- Custom Theme Style -->        
        <link rel="stylesheet" href="stylesheet/styles.css"> 

    </head>

    <body class="preHome" style="font-size: 100%;">

        <!-- redireciona para o browsehappy caso o IE for inferior ao 10 -->
        <!--[if lt IE 10]>
            <META http-equiv="refresh" content="0;URL=http://browsehappy.com/">
        <![endif]-->    

	    <!-- bloqueia o conteúdo caso o dispositivo seja menor que 320 de largura -->
	    <div id="resAbaixoNorm">
            <p>A resolução do dispositivo é muito baixa.</p>
        </div> 

        <div id="conteudo">
            <div class="linha"></div>
            
            <section id="pre-home">                
                <div class="logo"><!--#include file="layout/logo.asp"--></div>
                <div class="container-fluid">                
                    <div class="col-xs-12 col-md-6">
                        <h1>Bem-vindo ao<br> Painel Administrativo<br><span>Sal Lebre.</span></h1>
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <form action="verifica.asp" method="post" id="frmLogin" class="form-horizontal form-label-left input_mask" autocomplete="off">
                            <img src="images/avtr.gif" alt="" title="" class="avt">
                            <p class="txt">Faça seu login</p>                            
                            <div class="col-xs-12 form-group has-feedback">
                                <input type="text" class="hidden" style="display: none;" id="txtEmail-fake" name="txtEmail">
                                <input type="text" class="form-control has-feedback-left" id="txtEmail" name="txtEmail" placeholder="Seu Login" required autofocus autocomplete="off">
                                <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-12 form-group has-feedback">
                                <input type="password" class="form-control has-feedback-left" id="txtSenha" name="txtSenha" placeholder="Sua senha" required autocomplete="off">
                                <span class="fa fa-key form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-12">
                                <button>                                    
                                    <div class="bg"><img src="images/btGeralBr.png" alt=""></div>
                                    <p>Entrar <span class="fa fa-arrow-right"></span></p>
                                </button>
                            </div>
                            <div class="col-xs-12">
                                <a href="javascript:animEsqueciASenha();">Esqueceu a senha?</a>
                            </div>
                            <div class="clearfix"></div>                            
                        </form>


                        <form action="__esqueci_a_senha.asp" method="post" id="frmEsqueceuSenha" class="form-horizontal form-label-left input_mask" autocomplete="off">
                            <img src="images/avtr.gif" alt="" title="" class="avt">
                            <p class="txt">Digite seu E-mail de cadastro</p>                            
                            <div class="col-xs-12 form-group has-feedback">
                                <!-- <input type="text" class="hidden" style="display: none;" id="txtEmailCad-fake" name="txtEmailCad" > -->
                                <input type="text" class="form-control has-feedback-left" id="txtEmailCad" name="txtEmailCad" placeholder="Seu E-mail" required autofocus autocomplete="off">
                                <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                            </div>                            
                            <div class="col-xs-12">
                                <button>                                    
                                    <div class="bg"><img src="images/btGeralBr.png" alt=""></div>
                                    <p>Enviar <span class="fa fa-arrow-right"></span></p>
                                </button>
                            </div>
                            <div class="col-xs-12">
                                <a href="javascript:lembreiASenha();">Lembrei minha senha!</a>
                            </div>
                            <div class="clearfix"></div>                            
                        </form>


                    </div>                
                </div>            
            </section>
            <div class="clearfix"></div>  

            <footer>                
                <div class="clearfix"></div>
            </footer>
        </div>       
        


        <!-- ******************************************************************* -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script> 
        <!-- Animações -->
        <script src="dist/js/animacoes.js"></script>     
        


        <!-- #include file="_mensagens_do_sistema.asp" -->

    </body>
</html>
