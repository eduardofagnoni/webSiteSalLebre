<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->

<%

    Function SafeSQL(sInput)
        TempString = sInput	  
        sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
        For iCounter = 0 to uBound(sBadChars)
            TempString = replace(TempString,sBadChars(iCounter),"")
        Next
        SafeSQL = TempString
	End function

    'Cria senha de oito dígitos randômicamente
    ' ********** gera senha pai *****************
    Function generatePassword(passwordLength)
        'Declare variables
        Dim sDefaultChars
        Dim iCounter
        Dim sMyPassword
        Dim iPickedChar
        Dim iDefaultCharactersLength
        Dim iPasswordLength
        'Initialize variables
        sDefaultChars="0123456789abcdefghijklmnopqrstuvxz"
        iPasswordLength=passwordLength
        iDefaultCharactersLength = Len(sDefaultChars) 
        Randomize'initialize the random number generator
        'Loop for the number of characters password is to have
        For iCounter = 1 To iPasswordLength
        'Next pick a number from 1 to length of character set 
        iPickedChar = Int((iDefaultCharactersLength * Rnd) + 1) 
        'Next pick a character from the character set using the random number iPickedChar
        'and Mid function
        sMyPassword 	= sMyPassword & Mid(sDefaultChars,iPickedChar,1)
        Next 
        generatePassword 	= sMyPassword
    End Function
    ' ********** gera senha pai *****************



    varEmail= SafeSQL(request.form("txtEmailCad"))

    'verifica se o email está cadastrado e ativo na base de dados
    Dim oComVerEmail
    Set oComVerEmail = New Conexao
    oComVerEmail.AbreConexao()
    oComVerEmail.AbreTabela("select * from "&oComVerEmail.prefixoTabela&"usuarios where ativo='s' and email='"&varEmail&"' limit 1")

    if oComVerEmail.rs.eof=false then
        idUserRec = oComVerEmail.rs("id")
        varNome = oComVerEmail.rs("nome")
        varSenha	=	generatePassword(8)
        oComVerEmail.UpdateItem("UPDATE "&oComVerEmail.prefixoTabela&"usuarios SET senha=md5('"&varSenha&"') WHERE id="&idUserRec)  


        'envia senha e login para o email cadastrado ********************
        'envia email - PADRAO LOCAWEB
        Set objCDOSYSMail = Server.CreateObject("CDO.Message")
        Set objCDOSYSCon = Server.CreateObject ("CDO.Configuration")

        'com autenticação'		 
            'SERVIDOR DE SMTP 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = oComVerEmail.SMTP_envioDeEmailsSistema 	 
            'PORTA PARA COMUNICAÇÃO COM O SERVIÇO DE SMTP 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 587	 
            'Utilização de SSl 
            'objCDOSYSCon.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True	 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2	 
            'ATIVAR RECURSO DE SMTP AUTENTICADO 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 	 
            'USU?RIO PARA SMTP AUTENTICADO 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername") = oComVerEmail.EmailContaEnvioMsgsSistema	 
            'SENHA DO USUÁRIO PARA SMTP AUTENTICADO 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword") = oComVerEmail.SenhaEmailEnvioMsgsSistema	 
            'TEMPO DE TIMEOUT (EM SEGUNDOS) 
            objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

        
        'objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
        'objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
        'objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
        'objCDOSYSCon.Fields("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30
        
        objCDOSYSCon.Fields.update 
        
        Set objCDOSYSMail.Configuration = objCDOSYSCon
        objCDOSYSMail.From = oComVerEmail.EmailFromSistema
        objCDOSYSMail.To = varEmail
        objCDOSYSMail.Bcc = oComVerEmail.EmailCopiaOculta
        objCDOSYSMail.Subject = "Reenvio de Senha"

        'montando a mensagem'
        mensagem ="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'><html xmlns='http://www.w3.org/1999/xhtml'><head><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' /><meta name='viewport' content='width=device-width'/></head><body style='width:100% !important;height:100%;background-color:#f8f8f8;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;' ><table class='body-wrap' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;width:100% !important;height:100%;background-color:#f8f8f8;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;' ><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td align='center' class='container' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;display:block !important;clear:both !important;margin-top:0 !important;margin-bottom:0 !important;margin-right:auto !important;margin-left:auto !important;max-width:580px !important;' ><table width='600' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;width:600px!important;border-collapse:collapse;' ><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td align='center' class='masthead' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;padding-top:80px;padding-bottom:80px;padding-right:0;padding-left:0;background-color:#003989;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;color:white;' ><h1 style='line-height:1.25;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;font-size:32px;margin-top:0 !important;margin-bottom:0 !important;margin-right:auto !important;margin-left:auto !important;max-width:90%;text-transform:uppercase;' >"&oComVerEmail.nomeDoSistema&"</h1></td></tr><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td class='content' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;background-color:white;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;padding-top:30px;padding-bottom:30px;padding-right:35px;padding-left:35px;' >"
        
        'Nome do usuário
        mensagem = mensagem + "<h2 style='margin-bottom:20px;line-height:1.25;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;font-size:28px;' >Ol&aacute; "&varNome&",</h2>"

        mensagem = mensagem + "<p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' >Sua senha foi atualizada com sucesso em nosso sistema.</p><p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' >Seguem seus dados de acesso.</p>"

        'dados de acesso
        mensagem = mensagem + "<p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;'>Seu login &eacute;: <span style='color:red;'>"&varEmail&"</span></p><p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;'>E sua nova senha &eacute;: <span style='color:red;'>"&varSenha&"</span></p>"

        'botão
        mensagem = mensagem + "<table style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;width:100% !important;border-collapse:collapse;' ><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td align='center' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><a href='"&oComVerEmail.caminhoInicial&"/admin' target='_blank' class='button' style='text-decoration:none;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;display:inline-block;color:white;background-color:#2A3F54;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;border-style:solid;border-color:#2A3F54;border-width:10px 20px 8px;font-weight:bold;border-radius:4px;' >Acesse seu Painel.</a></p></td></tr></table>"

        'considerações finais
        mensagem = mensagem + "<p style='font-size:16px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><em>- "&oComVerEmail.nomeDoSistema&"</em></p>"

        'final e rodapé
        mensagem = mensagem + "</td></tr></table></td></tr><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td class='container' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;display:block !important;clear:both !important;margin-top:0 !important;margin-bottom:0 !important;margin-right:auto !important;margin-left:auto !important;max-width:580px !important;' ><table style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;width:100% !important;border-collapse:collapse;' ><tr style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' ><td class='content footer' align='center' style='font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;' ><p style='font-size:12px;font-weight:normal;margin-bottom:20px;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' >Em caso de d&uacute;vidas ou sugest&otilde;es <a href='mailto:"&oComVerEmail.emailDuvidasESugestoes&"' style='color:#2A3F54;text-decoration:none;font-weight:bold;font-family:Avenir Next, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif;' >"&oComVerEmail.emailDuvidasESugestoes&"</a><br />Voc&ecirc; est&aacute; recebendo este e-mail por que est&aacute; cadastastrado em nosso sistema.</p></td></tr></table></td></tr></table></body></html>"


        objCDOSYSMail.HtmlBody = mensagem

        if oComVerEmail.tipoDeAmbiente<>"local" then
          objCDOSYSMail.Send
        else
          response.write ("<p>"&txtAssunto&"</p><br>")
          response.write (mensagem&"<br>")
          response.write ("<strong>Informa&ccedil;&otilde;es contas de envio:</strong><br>")
          response.write ("SMTP: "&oComVerEmail.SMTP_envioDeEmailsSistema&"<br>")
          response.write ("Conta de envio: "&oComVerEmail.EmailContaEnvioMsgsSistema&"<br>")
          response.write ("Senha da conta de envio: "&oComVerEmail.SenhaEmailEnvioMsgsSistema&"<br>")
          response.write ("E-mail From: "&oComVerEmail.EmailFromSistema&"<br>")
          response.write ("E-mail Destinat&aacute;rio: "&varEmail&"<br>")
          response.write ("E-mail C&oacute;pia Oculta: "&oComVerEmail.EmailCopiaOculta&"<br>")          
          response.write ("<p style='text-align:center'><a href='default.asp?msg_sys=34'>Volta para o sistema.</a></p>")	
          response.end()
        end if	
        
        set objCDOSYSMail = nothing
        set objCDOSYSCon = nothing
        '***********************************************************     
        response.redirect("default.asp?msg_sys=34")        
    
    else

    response.Redirect("default.asp?msg_sys=38") 'email não cadastrado		

    end if

%>