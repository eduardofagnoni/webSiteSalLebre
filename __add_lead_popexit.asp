<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="administrador/_classes/__cl__conexao.asp" -->

<%
	Function SafeSQL(sInput)
		TempString = sInput	  
		sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
		For iCounter = 0 to uBound(sBadChars)
			TempString = replace(TempString,sBadChars(iCounter),"")
		Next
		SafeSQL = TempString
	End function
	
	Function SafeSQLHTML(sInput)
		TempString = sInput	  
		sBadChars=array("select", "drop", "--", "insert", "delete", "xp_", "'") 
		For iCounter = 0 to uBound(sBadChars)
			TempString = replace(TempString,sBadChars(iCounter),"")
		Next
		SafeSQLHTML = TempString
	End function

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais
varRegIncluido="s" 'regIncluido

formulario = request.querystring("form")

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao() 

	nome			= SafeSQL(request.form("txtNome"))
	email			= SafeSQL(request.form("txtEmail"))
    origem          = SafeSQL(request.form("txtFrm-origem"))
	data			= Date()

	' preparando a data para gravacao
	if data<>"" then
		data = replace(data,"/",".")
		data = replace(data,"-",".")
		data = split(data,".")
		dia=data(0)
		mes=data(1)
		ano=data(2)
		data = ano+"-"+mes+"-"+dia
	end if		
	

	oConexaoAdd.AddItem("INSERT INTO "&oConexaoAdd.prefixoTabela&"contatos (nome, email, data, formulario) values ('"&nome&"','"&email&"','"&data&"','"&origem&"')")
	
%>