<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="administrador/_classes/__cl__conexao.asp" -->

<%
Dim oConexao
Set oConexao = New Conexao
oConexao.AbreConexao()

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao()

on error resume next

'*********************************************************
'função para limpar strings e proteger contra SQLInjection
'*********************************************************
Function SafeSQL(sInput)
  TempString = sInput
  'sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", "/", "\", ":", ";", "<", ">", "=", "[", "]", "?", "`", "|") 
  sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", "/", "\", ":", ";", "<", ">", "=", "[", "]", "?", "`", "|") 
  For iCounter = 0 to uBound(sBadChars)
  TempString = replace(TempString,sBadChars(iCounter),"")
  Next
  SafeSQL = TempString
End function

Function SafeSQL_HTML(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", "--", "insert", "delete", "xp_") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL_HTML = TempString
End function
'*********************************************************
'função para limpar strings e proteger contra SQLInjection
'*********************************************************

varAssunto = SafeSQL(request.form("txtAssuntoFC"))
varNome = SafeSQL(LCase(request.form("txtNomeFC")))
varEmail = SafeSQL_HTML(LCase(request.form("txtEmailFC")))
varTelefone = SafeSQL_HTML(request.form("txtTelefoneFC"))
varMensagem = SafeSQL_HTML(request.form("txtMensagemFC"))
varFormulario = "Fale Conosco"



if varAssunto="1" then
varNomeAssunto="Vendas"
emailTo="vendas@norsal.com.br"
elseif varAssunto="7" then
varNomeAssunto="RH"
emailTo="rh@norsal.com.br"
elseif varAssunto="2" then
varNomeAssunto="Logistica"
emailTo="guilherme.pinheiro@norsal.com.br"
elseif varAssunto="3" then
varNomeAssunto="Fiscal"
emailTo="consuelita.rodrigues@norsal.com.br"
elseif varAssunto="4" then
varNomeAssunto="Compras"
emailTo="compras.ab@norsal.com.br"
elseif varAssunto="8" then
varNomeAssunto="Cobranca"
emailTo="cobranca@norsal.com.br"
elseif varAssunto="5" then
varNomeAssunto="Financeiro (Fornecedores)"
emailTo="financeiro@norsal.com.br"
elseif varAssunto="9" then
varNomeAssunto="TI"
emailTo="suporte@norsal.com.br"
end if



datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais

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

oConexaoAdd.AddItem("INSERT INTO "&oConexaoAdd.prefixoTabela&"contatos (assunto,numero,bairro,nome,cidade,estado,sexo,complemento,dataDeNascimento,email,telefone,endereco,mensagem, data,formulario, ultimaAlteracao) values ('"&varAssunto&"','"&varNumero&"','"&varBairro&"','"&varNome&"','"&varCidade&"','"&varEstado&"','"&varSexo&"','"&varComplemento&"','"&varDataNascimento&"','"&varEmail&"','"&varTelefone&"','"&varEndereco&"','"&varMensagem&"','"&dataInclusao&"','"&varFormulario&"','"&ultima_alteracao&"')")

'envia senha e login para o email cadastrado ********************
'envia email - PADRAO LOCAWEB
Set objCDOSYSMail = Server.CreateObject("CDO.Message")
Set objCDOSYSCon = Server.CreateObject ("CDO.Configuration")

objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30

objCDOSYSCon.Fields.update 

Set objCDOSYSMail.Configuration = objCDOSYSCon
objCDOSYSMail.From = oConexaoAdd.EmailFromSistema
objCDOSYSMail.To = emailTo
objCDOSYSMail.Bcc = oConexaoAdd.EmailCopiaOculta   
objCDOSYSMail.Subject = varNomeAssunto

'montando a mensagem'
mensagem ="<html><body><p>Assunto: "&varNomeAssunto&"</p><p>Nome: "&varNome&"</p><p>Sexo: "&varSexo&"</p><p>Data de nascimento: "&varDataNascimento&"</p><p>Email: "&varEmail&"</p><p>Telefone: "&varTelefone&"</p><p>Endereço: "&varEndereco&"</p><p>Número: "&varNumero&"</p><p>Bairro: "&varBairro&"</p><p>Cidade: "&varCidade&"</p><p>Estado: "&varEstado&"</p><p>Complemento: "&varComplemento&"</p><p>CEP: "&varCep&"</p><p>Mensagem: "&varMensagem&"</p></body></html>"

objCDOSYSMail.HtmlBody = mensagem

if oConexaoAdd.tipoDeAmbiente<>"local" and oConexaoAdd.tipoDeAmbiente<>"localBZ" then
    objCDOSYSMail.Send
else
    response.write ("<p>"&txtAssunto&"</p><br>")
    response.write (mensagem&"<br>")
    response.write ("<strong>Informa&ccedil;&otilde;es contas de envio:</strong><br>")
    response.write ("SMTP: "&oConexaoAdd.SMTP_envioDeEmailsSistema&"<br>")
    response.write ("Conta de envio: "&oConexaoAdd.EmailContaEnvioMsgsSistema&"<br>")
    response.write ("Senha da conta de envio: "&oConexaoAdd.SenhaEmailEnvioMsgsSistema&"<br>")
    response.write ("E-mail From: "&oConexaoAdd.EmailFromSistema&"<br>")
    response.write ("E-mail Destinat&aacute;rio: "&varEmail&"<br>")
    response.write ("E-mail C&oacute;pia Oculta: "&oConexaoAdd.EmailCopiaOculta&"<br>")    
    response.write ("<p style='text-align:center'><a href='mensagem-contato-confirmacao.asp'>Volta para o sistema.</a></p>")	
    response.end()
end if	

set objCDOSYSMail = nothing
set objCDOSYSCon = nothing
'***********************************************************     
response.redirect("mensagem-contato-confirmacao.asp")
%>