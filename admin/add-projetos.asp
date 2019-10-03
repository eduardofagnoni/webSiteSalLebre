<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("ADM_logado")

Dim oConexaoListas
Set oConexaoListas = New Conexao
oConexaoListas.AbreConexao()

Dim oAddRegistro
Set oAddRegistro = New Conexao
oAddRegistro.AbreConexao()

Dim oEditRegistro
Set oEditRegistro = New Conexao
oEditRegistro.AbreConexao()


'*********************************************
'****  pega nome do usuário logado
'*********************************************
Dim oUsuario
Set oUsuario = New Conexao
oUsuario.AbreConexao()
oUsuario.AbreTabela("select id,nome,dataCadastro from "&oUsuario.prefixoTabela&"usuarios where id="&session("ADM_id")&" limit 1 ")
nomeDoUsuario = oUsuario.rs("nome")
dataCadastro = oUsuario.rs("dataCadastro")
idUser = oUsuario.rs("id")
'*********************************************
'*********************************************


Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

id = SafeSQL(request.querystring("id"))
regIniciado = SafeSQL(request("regIni"))

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais
varRegIncluido="n" 'regIncluido

' preparando a data para gravacao
dataInclusao = Date()
if dataInclusao<>"" then
    dataInclusao = replace(dataInclusao,"/",".")
    dataInclusao = replace(dataInclusao,"-",".")
    dataInclusao = split(dataInclusao,".")
    dia=dataInclusao(0)
    mes=dataInclusao(1)
    ano=dataInclusao(2)
    dataInclusao = ano+"-"+mes+"-"+dia
end if

if regIniciado="s" then
    'Abre projeto para edição
    oEditRegistro.AbreTabela("SELECT id,nome,texto,foto,seo_title,seo_description,seo_keyword FROM "&oEditRegistro.prefixoTabela&"projeto WHERE ativo='s' AND id="&id)   
else
    'inclui o próximo registro e prepara o mesmo para edição.
    oAddRegistro.AddItem("INSERT INTO "&oAddRegistro.prefixoTabela&"projeto (data, userIdSession, ultimaAlteracao) values ('"&dataInclusao&"','"&idUser&"','"&ultima_alteracao&"')")
    oEditRegistro.AbreTabela("SELECT id FROM "&oEditRegistro.prefixoTabela&"projeto WHERE ativo='s' AND userIdSession="&idUser&" AND registroIncluido='n' ORDER BY id DESC")
    response.redirect("add-projetos.asp?regIni=s&id="&oEditRegistro.rs("id"))
end if

%>
<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>		
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">		
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        		
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/AdminLTE.css">		
		<link rel="stylesheet" href="dist/css/skins/skin-black.css">
		
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

        <!-- CKEditor -->        
        <script type="text/javascript" src="vendors/ckeditor/ckeditor.js"></script>
		<script src="vendors/ckeditor/samples/sample.js" type="text/javascript"></script>

        <!-- Custom Theme Style -->        
        <link rel="stylesheet" href="stylesheet/styles.css"> 

        <!-- cropper Style -->  
        <link rel="stylesheet" href="cropper/cropper.min.css">
    	<link rel="stylesheet" href="dropzone/dropzone.css">

        <!-- Full Calendar -->
		<link href='vendors/fullcalendar/dist/fullcalendar.min.css' rel='stylesheet' />
		<link href='vendors/fullcalendar/dist/fullcalendar.print.min.css' rel='stylesheet' media='print' />
		<!-- Moment -->
		<script src='vendors/moment/min/moment.min.js'></script>

        <!-- bootstrap-daterangepicker -->
        <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- bootstrap-datetimepicker -->
        <link href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
	</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">

        <!-- Main Header -->
        <!--#include file="_header.asp"-->

        <!-- Left side column. contains the logo and sidebar -->
        <!--#include file="_menu.asp" -->

        
        <div class="content-wrapper">
            
            <section class="content-header">
                <h1>Adicionar Receita <small></small></h1>
                <ol class="breadcrumb">
                    <li><a href="admin.asp"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="lista-projetos.asp"><i class="fa fa-list"></i> Lista de Receita</a></li>
                    <li class="active">Adicionar Receita</li>
                </ol>
            </section>
            
            <section class="content container-fluid">

                <!-- incluir fotos do projeto -->
                <div class="col-xs-12 col-md-3">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Foto</h3>
                        </div>
                        
                        <div class="box-body">

                            <figure style="margin-bottom:20px;text-align:center">
                                <%
                                if oEditRegistro.rs("foto")<>"" then
                                %>
                                    <img src="<%=oEditRegistro.enderecoProdutos%><%=oEditRegistro.rs("foto")%>" alt="" style="max-width:100%;" >
                                <%
                                else
                                %>
                                    <img src="images/avtr.gif" alt="" style="max-width:100%;" >
                                <%
                                end if
                                %>
                                <figcaption style="margin-top:10px">
                                    <button type="button" class="btnExtBt btAzul" data-toggle="modal" data-target="#myModalFotoTopo">
                                        <div class="bg3"><img src="../images/btGeralBr.png" alt=""></div>
                                        Incluir foto do Projeto
                                    </button>
                                    <br>
                                    <small style="display:block; margin: 10px 0 0 0;"><strong>A foto do projeto deve ser um .jpg ou .png com boa qualidade, e suas dimensões devem ser 283 x 323 pixels.</strong></small>
                                </figcaption>                            
                            </figure>
                            
                                                      
                        </div>
                           
                    </div>
                </div>
                <!-- incluir fotos do projeto //-->


                
                <!-- incluir o conteúdo do projeto -->
                <div class="col-xs-12 col-md-9">
                    <div class="box">

                        <div class="box-header">
                            <h3 class="box-title">Projetos</h3>
                        </div>
                        
                        <div class="box-body">
                            <form class="form-horizontal form-label-left input_mask" method="post" action="gravar-projetos.asp">                                  

                                <div class="row">                
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label class="sr-only" for="txtNome">Nome</label>
                                            <input type="text" class="form-control" id="txtNome" name="txtNome" placeholder="Nome" value="<%=oEditRegistro.rs("nome")%>" required>
                                        </div>
                                    </div>                                    
                                </div>                                

                                <div class="row">
                                    <div class="col-xs-12">                                                            

                                        <div class="form-group">	      
                                            <label for="txtTexto">Texto</label>
                                            <textarea name="txtTexto" id="txtTexto" class="form-control" placeholder="Embalagens"><%=oEditRegistro.rs("texto")%></textarea>
                                            <script type="text/javascript">
                                                CKEDITOR.replace( "txtTexto", { 

                                                    // Define the toolbar groups as it is a more accessible solution.
                                                    toolbarGroups: [									
                                                        {"name":"basicstyles","groups":["basicstyles"]},
                                                        {"name":"tools","groups":["tools"]},
                                                        {"name":"blocks","groups":["blocks"]},
                                                        {"name":"cleanup","groups":["cleanup"]},
                                                        {"name":"list","groups":["list"]},
                                                        {"name":"indent","groups":["indent"]},
                                                        {"name":"undo","groups":["undo"]},
                                                        {"name":"spellchecker","groups":["spellchecker"]},
                                                        {"name":"clipboard","groups":["clipboard"]},
                                                        {"name":"basicstyles","groups":["basicstyles"]},
                                                        {"name":"links","groups":["links"]},
                                                        {"name":"paragraph","groups":["list","blocks"]},
                                                        {"name":"document","groups":["mode"]},
                                                        {"name":"insert","groups":["insert"]},
                                                        {"name":"styles","groups":["styles"]},
                                                        {"name":"about","groups":["about"]}
                                                    ],
                                                    // Remove the redundant buttons from toolbar groups defined above.
                                                    //removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar'

                                                    });
                                            </script>
                                        </div>

                                    </div>                        
                                </div>



                                <div class="box" style="background:#efefef;">
                                    <div class="box-header">
                                        <h3 class="box-title">SEO</h3>
                                    </div>                        
                                    <div class="box-body">

                                        <div class="row">                
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label class="sr-only" for="txtSeoTitle">Title</label>
                                                    <textarea class="form-control" id="txtSeoTitle" name="txtSeoTitle" placeholder="Title" style="resize:vertical"><%=oEditRegistro.rs("seo_title")%></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">                
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label class="sr-only" for="txtSeoDescription">Meta Description</label>
                                                    <textarea class="form-control" id="txtSeoDescription" name="txtSeoDescription" placeholder="Meta Description" style="resize:vertical"><%=oEditRegistro.rs("seo_description")%></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">                
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label class="sr-only" for="txtSeoKeyword">Meta Keywords</label>
                                                    <textarea class="form-control" id="txtSeoKeyword" name="txtSeoKeyword" placeholder="Meta Keywords" style="resize:vertical"><%=oEditRegistro.rs("seo_keyword")%></textarea>
                                                    <small>Incluir palavras ou termos separados por vírgulas</small>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>


                                
                                <input type="hidden" name="idProjeto" id="idProjeto" value="<%=oEditRegistro.rs("id")%>">                                
                                <input type="hidden" name="regIni" id="regIni" value="s">
                                        
                                <div class="form-group" style="float:right">
                                    <button type="button" class="btnExtBt btTransparent" onclick="location.href='lista-projetos.asp?msg_sys=44'">
                                        <div class="bg"><img src="../images/btGeralBr.png" alt=""></div>
                                        Cancelar
                                    </button>

                                    <button type="submit" class="btnExtBt btAzul">
                                        <div class="bg2"><img src="../images/btGeralBr.png" alt=""></div>
                                        Salvar
                                    </button>
                                </div>
                                <div class="clearfix"></div>
                                
                            </form>
                        </div>
                            
                    </div>
                </div>
                <!-- incluir o conteúdo do projeto //-->                

            </section>            
        </div>


        <!-- Modal Foto Interna -->
        <div id="myModalFotoTopo" class="modal fade bs-example-modal-sm" data-backdrop="static" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">            
                <h4 class="modal-title" id="myModalLabel2">Foto do Projeto</h4>
                </div>
                <div class="modal-body">

                        <div class="profile_img">
                            <div id="crop-avatar">                                
                                <form action="gravar-foto-projetos.asp?id=<%=oEditRegistro.rs("id")%>" class="dropzone" id="my-dropzone-fotoTopoProjeto" method="post" enctype="multipart/form-data">
                                    <div class="fallback">
                                        <input name="file" type="file">
                                        <input type="hidden" name="idUser" value="<%=oEditRegistro.rs("id") %>">
                                    </div>
                                </form>
                            </div>
                        </div>

                </div>
                <div class="modal-footer">            
                    <button type="button" class="btnExtBt btAzul" data-dismiss="modal" onclick="location.href='add-projetos.asp?regIni=s&id=<%=oEditRegistro.rs("id")%>'">
                        <div class="bg2"><img src="images/btGeralBr.png" alt=""></div>
                        Fechar e Atualizar
                    </button>        
                </div>
            </div>
            </div>
        </div>


        <!-- Main Footer -->
        <!--#include file="_footer.asp"-->

        <!-- Control Sidebar -->
        <!--#include file="_sidebar.asp"-->




        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->


<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- Botoneira -->
<script src="dist/js/botoneira.js"></script>

<!-- Cropper -->
<script src="cropper/cropper.min.js"></script>
<script src="dropzone/dropzone.js"></script>
<script src="main-projetos.js"></script>	

<!-- bootstrap-daterangepicker -->
<script src="vendors/moment/min/moment.min.js"></script>
<script src="vendors/moment/min/locales.min.js"></script>
<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-datetimepicker -->    
<script src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="build/js/datapicker.js"></script>
<!-- Initialize datetimepicker -->
<script>   
    
    $('#dataInclusaoPacote').datetimepicker({
        format: 'DD.MM.YYYY',
        locale: 'pt-br'
    }); 

    $('#dataValidadePacote').datetimepicker({
        format: 'DD.MM.YYYY',
        locale: 'pt-br'
    });     
    
</script>


<script>
$(document).ready(function() {	
	init_daterangepicker();
    init_daterangepicker_right();
    init_daterangepicker_single_call();
    init_daterangepicker_reservation();    
});	
</script>


</body>
</html>