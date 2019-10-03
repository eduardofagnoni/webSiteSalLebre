<div class="row">
                    <div class="col-xs-12 col-md-6 col-sm-6">


                        
                        <div class="box box-default">
                            <div class="box-header with-border">
                                <h3 class="box-title">Filtro</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                </div>
                            </div>

                            <div class="box-body">
                                <form id="frmFiltro" class="frmFiltro"  method="post" action="admin.asp">
                                    <div class="col-md-4 col-sm-4 col-xs-12 form-group">
                                        <select class="form-control" id="txtMes" name="txtMes">
                                            <option value="" selected="selected">Selecione o Mês</option>
                                            <option value="01">Janeiro</option>
                                            <option value="02">Fevereiro</option>
                                            <option value="03">Março</option>
                                            <option value="04">Abril</option>
                                            <option value="05">Maio</option>
                                            <option value="06">Junho</option>
                                            <option value="07">Julho</option>
                                            <option value="08">Agosto</option>
                                            <option value="09">Setembro</option>
                                            <option value="10">Outubro</option>
                                            <option value="11">Novembro</option>
                                            <option value="12">Dezembro</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-12 form-group">
                                        <input type="text" class="form-control"  id="txtAno" name="txtAno" placeholder="Ano (yyyy)" onKeyDown="Mascara(this,Integer);" onKeyPress="Mascara(this,Integer);" onKeyUp="Mascara(this,Integer);" maxlength="4">
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-12 form-group">
                                        <button type="submit" class="btnExtBt btAzul">
                                            <div class="bg3"><img src="../images/btGeralBr.png" alt=""></div>
                                            Filtrar
                                        </button>
                                    </div>                    
                                </form>
                            </div>

                        </div>


                        <div class="box box-default">
                            <div class="box-header with-border">
                                <h3 class="box-title">Cadastro de usuários via formulários <%=varPeriodoDoFiltro%></h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>                                    
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-5">
                                    <div class="chart-responsive">
                                        <canvas id="pieChart" height="150"></canvas>
                                    </div>
                                    <!-- ./chart-responsive -->
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-md-4">
                                    <ul class="chart-legend clearfix ">

                                        <li><span class="badge bg-red"><%'=totalContatosDuvidas%></span> Dúvidas </li>
                                        <li><span class="badge bg-green"><%'=totalContatosCriticas%></span> Críticas e sugestões </li>
                                        <li><span class="badge bg-yellow"><%'=totalContatosClientes%></span> Seja nosso cliente </li>
                                        <li><span class="badge bg-aqua"><%'=totalContatosFornecedores%></span> Fornecedores </li>
                                        <li><span class="badge bg-purple"><%'=totalContatosNews%></span> Newsletter </li>                                        
                                    </ul>
                                    </div>
                                    <div class="col-md-3">
                                    <ul class="chart-legend clearfix ">
                                        <li><button onclick="location.href='_exportar_duvidas.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar</button></li>
                                        <li><button onclick="location.href='_exportar_criticas.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar</button></li>
                                        <li><button onclick="location.href='_exportar_seja_cliente.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar</button></li>
                                        <li><button onclick="location.href='_exportar_fornecedores.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar</button></li>
                                        <li><button onclick="location.href='_exportar_newsletter.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar</button></li>
                                        <li>&nbsp;</li>
                                        <li><button onclick="location.href='_exportar_todos.asp?txtMes=<%=varMesFiltro%>&txtAno=<%=varAnoFiltro%>'" class="btn btn-block btn-default btn-xs">Exportar todos</button></li>
                                    </ul>
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.box-body -->                            
                        </div>
                        <!-- /.box -->

                    </div>                
                </div>