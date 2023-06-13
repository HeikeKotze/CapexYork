<%@ Page Title="Authorisation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Authorisation.aspx.cs" Inherits="CapexYork._Authorisation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                                <h1><strong>Authorisations</strong></h1>
                            </div>   
                           </header>

                            <div class="col-md-6 col-md-offset-2">
                                <h3><strong>Signatures</strong></h3>
                            </div>
                            <br />
                            
                            <div class="panel-body" style="font:bolder">
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-2" style="left: 0px; top: 0px">
                                        <div class="form-group">
                                            <br />
                                            <strong>
                                            <asp:Label Text="Signatory" runat="server"/>
                                            </strong>
                                            <div>
                                            <asp:DropDownList ID="drpSignatories" runat="server" style="width:300px; height:30px"></asp:DropDownList>
                                            </div>
                                        </div>
                                     </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <br /><br />
                                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-secondary btn-md" style="width:100px; height:35px" OnClick="btnAdd_Click"/>
                                        </div>
                                    </div>
                               </div>
                                    
                                 <div class="row">
                                    <div class="form-group">
                                        <center>
                                            <br />
                                            <asp:GridView  ID="GridViewSignatures" runat="server" AutoGenerateColumns="false"  Width="760px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
                                                <RowStyle Height="20px" BackColor="#E3EAEB" />
                                                <AlternatingRowStyle BackColor="White" Height="30px"/>
                                            <Columns>
                                                <asp:BoundField DataField="Signatory" HeaderText="Signatory" SortExpression="Signatory" />
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                <asp:TemplateField HeaderText="Signatures" SortExpression="Signature">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="sign1" runat="server" Text="Sign" href="/UserSign.aspx"/>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                                <EditRowStyle Height="25px" HorizontalAlign="Left" Width="100px" />
                                                <FooterStyle BackColor="#CCCC99" />
                                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        </center>
                                    </div>
                                 </div>

                                 <div class="row">
                                    <div class="col-md-4 col-md-offset-2">                    
                                            <div class="form-group">
                                                <asp:Button ID="btnSubmitAll" runat="server" CssClass="btn btn-success btn-md" Text="Submit" style="width:100px; height:50px"/>
                                            </div>
                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Button ID="btnClearAuth" runat="server" CssClass="btn btn-secondary btn-md" Text="Clear" style="width: 100px;height:50px" />
                                                <asp:Button ID="btnBackAuth" runat="server" CssClass="btn btn-secondary btn-md" Text="Back" style="width: 100px; height: 50px" OnClick="btnBackAuth_Click" />
                                            </div>
                                        </div>
                                    </div>  
                                </div>
                        </section>
                    </div>
                </div>
            </section>
         </section>
</asp:Content>
