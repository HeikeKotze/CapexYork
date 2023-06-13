<%@ Page Title="Signature" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSign.aspx.cs" Inherits="CapexYork.UserSign" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content" style="color:black; margin-top:40px">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">    
                    <section class="panel" style="background-color:white">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <img src="Images/PicYork.png" class="logo" height="100" width="300" />
                            </div>
                            <br />
                            <div class="col-md-6 col-md-offset-4">
                                <h1><strong>Signature</strong></h1>
                            </div>
                        </header>


                        <div class="panel-body" style="font:bolder">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Username" runat="server" />
                                        <asp:TextBox ID="txtUsername" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Username"/>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <asp:Button ID="btnSign" runat="server" Text="Sign" CssClass="btn btn-warning btn-md"  style="width:100px;height:50px" OnClick="btnSign_Click"/>
                                    </div>
                                </div>

                                <div class="col-md-2 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Password" runat="server" />
                                        <asp:TextBox ID="txtPassword" runat="server" Enabled="true" CssClass=" form-control input-sm" TextMode="Password" placeholder="Password"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <br />
                                            <p style="font-weight:bold; color:orange">By clicking this button you agree to the contents of this Capex Form</p>
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

