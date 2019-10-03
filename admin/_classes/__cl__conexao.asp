<%
'*************************************************************************
'*************************************************************************
'****                                                                 ****
'****        Exemplo de utilização da Classe                          ****
'****                                                                 ****
'****        Dim oConexao                                             ****
'****        Set oConexao = New Conexao                               ****
'****        oConexao.AbreConexao()                                   ****
'****                                                                 ****
'*************************************************************************
'*************************************************************************

Class Conexao

	Private Sub VariaveisDaConexao()
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Informe aqui os dados da Base de dados MySql criada      ****
	'****        no servidor.                                             ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************
		hostBaseDeDados 	= "localhost" 		'Incluir o Host
		userBaseDeDados 	= "root"			'Incluir o User
		senhaBaseDeDados 	= ""				'Incluir o Password
		dataBaseDeDados 	= "sallebre"		'Incluir o DataBase

		debug 				= "" 				'Valor default é VAZIO que seria o mesmo que desativado.
				   				 				'caso seja necessário ativar o debug, utilizar "ativado".

		tipoDeAmbiente		= "local"		'Os ambientes podem ser:
												' - local
												' - desenvolvimento
												' - producao

		if tipoDeAmbiente="local" then	

			nomeDoSistema				=	"Sal Lebre"
			caminhoInicial				=	"http://192.168.16.47:80/sallebre"
			caminhoFisico				=	"C:\Users\eduardo\OneDrive - Brancozulu Publicidade Comunicacao e educacao ltda\__TrabalhosBrancozulu\32-sal-lebre\html\"
			prefixoTabela				=	"_dev_"
			emailDuvidasESugestoes		=	""
			SMTP_envioDeEmailsSistema	=	""
			porta_SMTP					=	""
			IMAP_config					=	""
			porta_IMAP					=	""
			POP_config					=	""
			porta_POP					=	""
			EmailContaEnvioMsgsSistema  =	""
			SenhaEmailEnvioMsgsSistema	=	""
			EmailFromSistema			=	""
			EmailCopiaOculta			=	"eduardo@brancozulu.com.br"			

			'*** uploads caminhos físicos ***

			upProduto					=	caminhoFisico+"admin\__media\produto"
			upProjetos					=	caminhoFisico+"admin\__media\projetos"
			upReceita					=	caminhoFisico+"admin\__media\receita"
			upSalinas					=	caminhoFisico+"admin\__media\salinas"
			

			'*** endereços URLs ***	

			enderecoProduto				=	caminhoInicial+"/admin/__media/produto/"
			enderecoProjetos			=	caminhoInicial+"/admin/__media/projetos/"
			enderecoReceita				=	caminhoInicial+"/admin/__media/receita/"
			enderecoSalinas				=	caminhoInicial+"/admin/__media/salinas/"
			

		elseif tipoDeAmbiente="localBZ" then				

		elseif tipoDeAmbiente="desenvolvimento" then
			
		elseif tipoDeAmbiente="producao" then			

		else
			response.write("Tipo de ambiente inválido ou não declarado.")
		end if

	End Sub

	'*************************************************************************


	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Declaração das variáveis                                 ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************
	
	Private hostBaseDeDados
	Private userBaseDeDados
	Private dataBaseDeDados
	Private senhaBaseDeDados
	Private debug	
	Private conectionString
	Private driveODBC
	Private rsTable
	Private stringDoSelect
	Private stringAdd

	public tipoDeAmbiente 		'define se o ambiente é local, desenvolvimento ou Produção

	public conex
	public rs

	public caminhoInicial
	public nomeDoSistema
	public emailDuvidasESugestoes
	public SMTP_envioDeEmailsSistema
	public porta_SMTP
	public IMAP_config
	public porta_IMAP
	public POP_config
	public porta_POP
	public EmailContaEnvioMsgsSistema
	public SenhaEmailEnvioMsgsSistema
	public EmailFromSistema
	public EmailCopiaOculta
	public caminhoFisico
	public caminhoVirtual
	public prefixoTabela
	public resultadoContaItem

	'define a variáveis de upload e caminho dos uploads'
	
	'uploads
	public upProduto
	public upProjetos
	public upReceita
	public upSalinas

	'chamar as imagens para mostrar no browser
	public enderecoProduto
	public enderecoProjetos
	public enderecoReceita
	public enderecoSalinas		

	'*************************************************************************	

	Function AbreConexao()
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Rotina identifica o Drive ODBC disponível no servidor    ****
	'****        e abre a conexão com a base de dados MySQL informada     ****
	'****        na sub Function VariaveisDaConexao()                     ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************
		VariaveisDaConexao()		
		Set conex = CreateObject("ADODB.Connection")
		tiposDeconexoes = Array("MySQL ODBC 2.5 Driver",_
								"MySQL ODBC 3.5 Driver",_
								"MySQL ODBC 3.51 Driver",_
								"MySQL ODBC 5.1 Driver",_
								"MySQL ODBC 5.2 Driver",_
								"MySQL ODBC 5.3 Driver",_
								"MySQL ODBC 2.5 UNICODE Driver",_
								"MySQL ODBC 3.5 UNICODE Driver",_
								"MySQL ODBC 3.51 UNICODE Driver",_
								"MySQL ODBC 5.1 UNICODE Driver",_
								"MySQL ODBC 5.2 UNICODE Driver",_
								"MySQL ODBC 5.3 UNICODE Driver",_
								"MySQL ODBC 2.5 ANSI Driver",_
								"MySQL ODBC 3.5 ANSI Driver",_
								"MySQL ODBC 3.51 ANSI Driver",_
								"MySQL ODBC 5.1 ANSI Driver",_
								"MySQL ODBC 5.2 ANSI Driver",_
								"MySQL ODBC 5.3 ANSI Driver")

		For Each driveODBC in tiposDeconexoes
			
			On Error Resume Next			
			conectionString = "driver="& driveODBC &";server="&hostBaseDeDados&";uid="&userBaseDeDados&";pwd="&senhaBaseDeDados&";database="&dataBaseDeDados
			conex.Open conectionString
			if 0=Err.Number Then
				ef_Teste = "drvEncontrado"
				Exit For
			Else
				if debug="ativado" then
					response.write("Error: "&Err.Description&" - O Driver testado foi: <span style='color:red'>"&driveODBC&"</span><br>")
				end if
			End if
			On Error Goto 0

		Next

		if debug="ativado" then
			if ef_Teste = "drvEncontrado" Then
				response.write("Conectado com o MySql usando o Driver: "&driveODBC&"<br>")
			Else
				response.write("A conexão com o MySql falhou<br>")
			End if
		End if
	End Function

	'*************************************************************************

	Function AbreTabela(stringDoSelect)
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Abre uma tabela da Base de Dados de acordo com           ****
	'****        o SELECT passado por parâmetro                           ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************	
		If len( stringDoSelect & "" ) = 0	then
			Response.Write ("<p style='color:red'>O SELECT não foi passado!</p>")
			Exit Function
		end if	    

		Set rs = Server.CreateObject("ADODB.Recordset")
		rs.Open stringDoSelect, conex
	End Function

	Function AddItem(stringAdd)
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Adiciona um registro na tabela de acordo com o           ****
	'****        o SELECT passado por parâmetro                           ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************	
		If len( stringAdd & "" ) = 0	then
			Response.Write ("<p style='color:red'>Os Parâmetros não foram passados!</p>")
			Exit Function
		end if	    

		Set rs = Server.CreateObject("ADODB.Recordset")
		rs.Open stringAdd, conex
	End Function

	'*************************************************************************

	Function UpdateItem(stringAdd)
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Adiciona um registro na tabela de acordo com o           ****
	'****        o SELECT passado por parâmetro                           ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************	
		If len( stringAdd & "" ) = 0	then
			Response.Write ("<p style='color:red'>Os Parâmetros não foram passados!</p>")
			Exit Function
		end if	    

		Set rs = Server.CreateObject("ADODB.Recordset")
		rs.Open stringAdd, conex
	End Function

	'*************************************************************************

	Function ContaItem(stringAdd)
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Conta registros                                          ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************	
		If len( stringAdd & "" ) = 0	then
			Response.Write ("<p style='color:red'>Os Parâmetros não foram passados!</p>")
			Exit Function
		end if	    

		Set resultadoContaItem = conex.execute(stringAdd)
		resultadoContaItem = Clng(resultadoContaItem.fields(0))	
		
	End Function

	'*************************************************************************

	Function RetornaDadosDeConexao()
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Mostra informações sobre a conexão atual,                ****
	'****        as Bases de Dados e suas tabelas                         ****
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************
		If conex.State = 1 Then
			response.write("<p>'+++++++++++++++++++++++++++++++++++++++++++<br>")
			response.write("Informações sobre a Conexão:<br>+++++++++++++++++++++++ Conexão Criada!<br></p>")		
			response.write("Drive ODBC Utilizado: <strong>"&driveODBC&"</strong><br>")
			response.write("Nome da Base de Dados: <strong>"&dataBaseDeDados&"</strong></p>")
					
			response.write("<p>EFWeb Classe de conexão com Base de Dados MySQL</p>")

			Set rs = conex.EXECUTE("Show Databases",, adCmdText)
			response.write "<table border='1'>"
			While not rs.EOF
				Response.write "<tr><td colspan='2'>" & rs.Fields(0).name & " : " & rs.Fields(0) & "</td></tr>"				
				Set objTables = conex.Execute("SHOW TABLES FROM " & rs.Fields(0),, adCmdText)				
				Response.write "<tr><td valign='top'>Tables:</td><td>"
				While not objTables.EOF
					Response.write "   " & objTables.Fields(0) & "<br>"
					objTables.MoveNext
				Wend
				Response.write "</td></tr>"
			rs.MoveNext	
			Wend
			Response.write "</table>"
		Else
			response.write("A conexão com a Base de dados não existe.")
		end if
	End Function

	'*************************************************************************

	Function FechaConexao()
		conex.Close
		if debug="ativado" then
			response.write("<br>Conexao Fechada!")
		end if
	End Function

	'*************************************************************************

	

End Class







'*************************************************************************
'*************************************************************************
'****                                                                 ****
'****        Exemplo de utilização da Classe                          ****
'****                                                                 ****
'****        Dim oPersists                                            ****
'****        Set oPersists = New UploadPersists                       ****
'****        oPersists.UploadDeArquivo()                              ****
'****                                                                 ****
'*************************************************************************
'*************************************************************************

Class UploadPersists

	private caminho
	Private caminho2
	Private numeroArq
	Private quebra
	Private quebra2

	Private ComponenteUpload

	public caminhoDaPasta
	public objUpload
	public txtArquivo
	public txtArquivo2




	Function UploadDeArquivo(caminhoDaPasta)
	'*************************************************************************
	'*************************************************************************
	'****                                                                 ****
	'****        Faz o upload dos arquivos na pasta                       ****
	'****        passada por parâmertro.                                  ****								
	'****        Usando o Persists Upload                                 ****								
	'****                                                                 ****
	'*************************************************************************
	'*************************************************************************	

		ComponenteUpload = "Dundas"			'Os componentes podem ser:
												' - Persits
												' - Dundas


		if ComponenteUpload="Persits" then

			On Error Resume Next
			Set objUpload = Server.CreateObject ("Persits.Upload.1")
			objUpload.OverwriteFiles=false

			objUpload.Save caminhoDaPasta

			' Verificar se ocorreu algum erro durante a chamada.
			' Se ocorrer, redirecionar para uma pagina de Erro ficticia
			If Err.Number <> 0 Then
				Response.Write("Erro: "&Err.Number&" - "&err.description)
				response.End()
			Else
				' Criar um loop para verificar os arquivos carregados
				' Se for executavel, apagar do disco
				' Mostrar uma caixa de diálogo com nome dos arquivos
				For Each objUploadedFile in objUpload.Files
				Response.Write "campo &quot;" & objUploadedFile.Name & "&quot; do Formulario - Caminho : " & objUploadedFile.Path & " - Tamanho : " & CStr(objUploadedFile.Size) & " bytes<br>"

						nomearq = split(objUploadedFile.Path,"\")
						'nomearq = nomearq(ubound(nomearq))
					

					If InStr(1,objUploadedFile.Ext,"exe") Then
					Response.Write " MAS O Arquivo foi REMOVIDO por ser um tipo proibido"
					objUploadedFile.Delete
						response.redirect("_dados.asp?tipo=49&act=1&msg_sys=28")
					End If
				Next

				' ************************************************
				' PEGA NOME DO ARQUIVO
				'*************************************************
					numeroArq=1
					For Each UploadedFile in objUpload.Files					
						if numeroArq=1 then
							caminho = UploadedFile.Path
							numeroArq=numeroArq+1
						else
							caminho2 = UploadedFile.Path
							numeroArq=1
						end if
					Next 
					quebra = split(caminho,"\")
					txtArquivo = quebra(ubound(quebra))				

					quebra2 = split(caminho2,"\")
					txtArquivo2 = quebra2(ubound(quebra2))
				' ************************************************
				' PEGA NOME DO ARQUIVO
				'*************************************************
			end if

		elseif ComponenteUpload="Dundas" then

			
			On Error Resume Next
			Set objUpload = Server.CreateObject ("Dundas.Upload.2")	

									
			objUpload.MaxFileSize=30048576	' Limit files to 3MB
			objUpload.UseUniqueNames=False
												
			
			objUpload.Save caminhoDaPasta	
			
			' Verificar se ocorreu algum erro durante a chamada.
			' Se ocorrer, redirecionar para uma pagina de Erro ficticia
			If Err.Number <> 0 Then
			Response.Write("Erro: "&Err.Number&" - "&err.description)
			response.End()
			Else
			' Criar um loop para verificar os arquivos carregados
			' Se for executavel, apagar do disco
			' Mostrar uma caixa de diálogo com nome dos arquivos
			For Each objUploadedFile in objUpload.Files
			Response.Write "campo &quot;" & objUploadedFile.TagName & "&quot; do Formulario - Caminho : " & objUploadedFile.Path & " - Tamanho : " & CStr(objUploadedFile.Size) & " bytes<br>"

					nomearq = split(objUploadedFile.Path,"\")
					objUploadedFile.TagName = nomearq(ubound(nomearq))
					

			If InStr(1,objUploadedFile.ContentType,"octet-stream") Then
			Response.Write " MAS O Arquivo foi REMOVIDO por ser um tipo proibido"
			objUploadedFile.Delete
			End If
			Next			
			
				' ************************************************
				' PEGA NOME DO ARQUIVO
				'*************************************************
					numeroArq=1
					For Each UploadedFile in objUpload.Files					
						if numeroArq=1 then
							caminho = UploadedFile.Path
							numeroArq=numeroArq+1
						else
							caminho2 = UploadedFile.Path
							numeroArq=1
						end if
					Next 
					quebra = split(caminho,"\")
					txtArquivo = quebra(ubound(quebra))				

					quebra2 = split(caminho2,"\")
					txtArquivo2 = quebra2(ubound(quebra2))
				' ************************************************
				' PEGA NOME DO ARQUIVO
				'*************************************************
			
			End If


		else

			response.write("O componente não foi definido.")
			exit function

		end if

	End Function


End Class	












'*************************************************************************
'*************************************************************************
'****                                                                 ****
'****        Exemplo de utilização da Classe                          ****
'****                                                                 ****
'****        Dim oValida                                              ****
'****        Set oValida = New ValidaSessao                           ****
'****        oValida.validaPagina()                                   ****
'****                                                                 ****
'*************************************************************************
'*************************************************************************
Class ValidaSessao

	Function validaPagina(varSession)

		if session(varSession) <> "sim" then
			response.Redirect("log_out.asp")
		end if	

	End Function

End Class	












%>






