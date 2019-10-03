<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="_classes/__cl__conexao.asp" -->

<%
email = request.Form("txtEmail")
email = replace(email,", ","") ' O campo do email-fake estava incluindo uma vírgula na string de e-mail
email = LCase(email)
Senha = request.Form("txtSenha")

Dim oConexao
Set oConexao = New Conexao
oConexao.AbreConexao()

Dim oConexaoEdit
Set oConexaoEdit = New Conexao
oConexaoEdit.AbreConexao()

oConexao.AbreTabela("select id,login,senha from "&oConexao.prefixoTabela&"usuarios where ativo='s' and login='"&email&"' and senha=MD5('"&Senha&"') limit 1 ")

if oConexao.rs.EOF=false then

    'recria as sessions    
    session("ADM_logado")	 = "sim"
    session("ADM_id") 		 = oConexao.rs("id")

    'muda status do usuário para online
    oConexaoEdit.UpdateItem("UPDATE "&oConexaoEdit.prefixoTabela&"usuarios SET online='s' WHERE id="&session("ADM_id"))

    response.Redirect("admin.asp")
		
end if
'oConexao.rs.close

		session("ADM_logado") = "nao"
		
'*********************************
'   LEVA PARA A TELA DE LOGIN
'   E EXIBE UMA MSG DE ERRO
'*********************************	
response.Redirect("default.asp?msg_sys=24")		
'*********************************
'   LEVA PARA A TELA DE LOGIN
'   E EXIBE UMA MSG DE ERRO
'*********************************		
		
%>

