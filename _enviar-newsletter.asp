<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<!-- #include file="administrador/_classes/__cl__conexao.asp" -->

<%
Dim oConexao
Set oConexao = New Conexao
oConexao.AbreConexao()

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao()

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


varAssunto = "10"
varNome = SafeSQL(LCase(request.form("txtNomeNews")))
varEmail = SafeSQL_HTML(LCase(request.form("txtEmailNews")))

varFormulario = "News Letter"

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

   
response.redirect("default.asp?msg_sys=46")
%>