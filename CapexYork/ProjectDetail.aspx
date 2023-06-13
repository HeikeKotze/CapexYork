<%@ Page Title="Project Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs" Inherits="CapexYork._ProjectDetail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content" style="color:black; margin-top:40px; margin-bottom:40px">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel" style="background-color:white">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <img src="Images/PicYork.png" class="logo" height="100" width="300" />
                            </div>
                            <br />
                            <div class="col-md-6 col-md-offset-5">
                                <h1><strong>Project Detail</strong></h1>
                            </div>   
                        </header>  

                        <div class="col-md-6 col-md-offset-5">
                                <h3>Major Anticipated Risks</h3>
                            <br /><br />
                        </div>
                        
                        <div class="panel-body" style="font:bolder">
                            <div class="row">
                                <div>

                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-2">
                                        <div class="form-group">
                                            <strong>
                                            <asp:Label Text="Risk Description" runat="server" />
                                            </strong>
                                            <asp:TextBox ID="txtRiskDescription" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <strong>
                                        <asp:Label Text="Possible Consequence Classification" runat="server" />
                                        </strong>
                                        <asp:DropDownList ID="drpPossibleConsequenceClass" runat="server" AutoPostBack="false" style="width:300px; height:30px">
                                            <asp:ListItem Text="High" Value="High" />
                                            <asp:ListItem Text="Medium" Value="Medium" />
                                            <asp:ListItem Text="Low" Value="Low" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <strong>
                                        <asp:Label Text="Possible Likelihood Classification" runat="server" />
                                        </strong>
                                        <asp:DropDownList ID="drpPossibleLikelihoodClass" runat="server" AutoPostBack="false" style="width:300px; height:30px">
                                            <asp:ListItem Text="High" Value="High" />
                                            <asp:ListItem Text="Medium" Value="Medium" />
                                            <asp:ListItem Text="Low" Value="Low" />
                                        </asp:DropDownList>
                                    </div>
                                    
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <strong>
                                        <asp:Label Text="Impacts On" runat="server" />
                                        </strong>
                                        <asp:TextBox ID="txtImpactsOn" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <strong>
                                        <asp:Label Text="Mitigating Strategy" runat="server" />
                                        </strong>
                                        <asp:TextBox ID="txtMitigatingStrategy" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <asp:Button ID="btnAddtoRisks" runat="server" CssClass="btn btn-secondary btn-md" Text="Add To List" Width="150px" Height="30px" OnClick="btnAddtoRisks_Click"/>
                                    </div>
                                    <br />
                                </div>
                            </div>
                                    
                                    <div class="form-group">
                                        <center>
                                        <asp:GridView ID="dynamicGridView" runat="server" Width="780px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="True">
                                            <AlternatingRowStyle BackColor="White" />
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                            </asp:GridView>                                        </center>
                                    </div>
                                    
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-6 col-md-offset-4">
                                <h3><strong>Key Measures of Project Success (Project KPI's)</strong></h3>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <br />
                                    <div class="form-group">
                                        <strong><asp:Label Text="Safety" runat="server" /></strong>
                                        <div><asp:Label Text="Measure: Reportable Incidents" runat="server" /></div>
                                        <asp:TextBox ID="txtSafetyKPI" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <strong><asp:Label Text="Safety" runat="server" /></strong>
                                        <div><asp:Label Text="i.e Payback" runat="server" /></div>
                                        <asp:TextBox ID="txtBenefitsKPI" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <br />
                                    <div class="form-group">
                                        <strong><asp:Label Text="Cost" runat="server" /></strong>
                                        <div><asp:Label Text="Measure: Within Budget" runat="server" /></div>
                                        <asp:TextBox ID="txtCostKPI" runat="server" Enabled="true" CssClass=" form-control input-sm"/>
                                    </div>
                                    <div class="form-group">
                                        <strong><asp:Label Text="Schedule" runat="server" /></strong>
                                        <div><asp:Label Text="Measure: Within Time" runat="server" /></div>
                                        <asp:TextBox ID="txtScheduleKPI" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                </div>
                            </div>
                                    <br />                           
                            <hr />
                        <div class="col-md-6 col-md-offset-5">
                                <h3><strong>Attachments</strong></h3>
                        </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <br />
                                    <table class="nav-justified" style="font-weight: normal">
                                        <tr>
                                            <td style="height: 20px; width: 466px;"><strong>Gant Chart</strong><asp:FileUpload ID="FileUpload1" runat="server" Height="29px" Width="467px" />
                                            </td>
                                            <td style="height: 20px; width: 459px"><strong>Estimate an Budget</strong><asp:FileUpload ID="FileUpload2" runat="server" Height="30px" />
                                            </td>
                                            <td style="height: 20px"><strong> Evaluation</strong><asp:FileUpload ID="FileUpload3" runat="server" Height="30px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 466px"><strong>Drawngs</strong><asp:FileUpload ID="FileUpload4" runat="server" Height="28px" />
                                            </td>
                                            <td style="width: 459px"><strong>Quotes</strong><asp:FileUpload ID="FileUpload6" runat="server" Height="28px" />
                                            </td>
                                            <td><strong>Business Case</strong><asp:FileUpload ID="FileUpload8" runat="server" Height="28px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 466px"><strong>Process Flow Study</strong><asp:FileUpload ID="FileUpload5" runat="server" Height="28px" />
                                            </td>
                                            <td style="width: 459px"><strong>RFQ</strong><asp:FileUpload ID="FileUpload7" runat="server" Height="28px" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                </div>
                            </div>
                            
                       </div>
                        <div class="row">
                                <div class="col-md-4 col-md-offset-2" style="margin-bottom:20px"">
                                    <asp:Button ID="NextAuth" runat="server" CssClass="btn btn-success btn-md" Text="Next" style="width:100px; height:50px " OnClick="NextAuth_Click" />
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Button runat="server" CssClass="btn btn-secondary btn-md" Text="Clear All" style="width:100px; height:50px " />
                                    <asp:Button ID="BackExec" runat="server" CssClass="btn btn-secondary btn-md" Text="Back" style="width:100px;height:50px" OnClick="BackExec_Click"/>
                                </div>
                            </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
    
</asp:Content>
