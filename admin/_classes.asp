<%

function montaObjeto(idDaGaleria)
    Dim oImagemTeste
    Set oImagemTeste = New mostraFoto
    oImagemTeste.mostraImage(idDaGaleria)
end function


'*************************************************************************
'*************************************************************************
'****                                                                 ****
'****        Exemplo de utilização da Classe                          ****
'****                                                                 ****
'****        Dim oValida                                              ****
'****        Set oValida = New mostraFoto                           ****
'****        oValida.mostraImage()                                   ****
'****                                                                 ****
'*************************************************************************
'*************************************************************************
Class mostraFoto

	Function mostraImage(idDaGaleria)

        Dim oConexaoListas
        Set oConexaoListas = New Conexao
        oConexaoListas.AbreConexao() 
        
        oConexaoListas.AbreTabela("select * from "&oConexaoListas.prefixoTabela&"galeriadeimagensarquivo where ativo='s' and idGaleria="&idDaGaleria&" order by id desc")
        
        dim contadorDeVoltas
        contadorDeVoltas = 1
        

        response.write ("<div id='carousel-example-generic' class='carousel slide' data-ride='carousel'>")
        response.write ("<div class='carousel-inner' role='listbox'>")
        
        while not oConexaoListas.rs.eof

            if contadorDeVoltas=1 then
                valorDefault="active"
            else
                valorDefault=""
            end if

            response.write ("<div class='item "&valorDefault&"'>")
            response.write ("<img src='"&oConexaoListas.enderecoGaleria & oConexaoListas.rs("arquivo")&"' alt='"&oConexaoListas.rs("arquivo")&"'>")
            response.write ("<div class='carousel-caption'>")
            response.write ("</div>")
            response.write ("</div>")

		oConexaoListas.rs.MoveNext()
        contadorDeVoltas=contadorDeVoltas+1
        wend   

        response.write ("</div>")
        response.write ("<a class='left carousel-control' href='#carousel-example-generic' role='button' data-slide='prev'>")
        response.write ("<span class='glyphicon glyphicon-chevron-left' aria-hidden='true'></span>")
        response.write ("<span class='sr-only'>Previous</span>")
        response.write ("</a>")
        response.write ("<a class='right carousel-control' href='#carousel-example-generic' role='button' data-slide='next'>")
        response.write ("<span class='glyphicon glyphicon-chevron-right' aria-hidden='true'></span>")
        response.write ("<span class='sr-only'>Next</span>")
        response.write ("</a>")
        response.write ("</div>")
        

	End Function

End Class	





  
  

%>