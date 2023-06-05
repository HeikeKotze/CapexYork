<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExecutiveSummary.aspx.cs" Inherits="CapexYork.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                                <h1>Executive Summary</h1>
                            </div>   
                        </header>                      

                        <div class="col-md-6 col-md-offset-2">
                                <h3>Amount requested includes</h3>
                        </div>

                        <div class="panel-body" style="font:bolder">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-2">
                                    <div class="form-group">
                                        <div><asp:TextBox runat="server" ID="txtAmountIncludes" TextMode="MultiLine" Rows="3" Columns="100"/></div>                                        
                                    </div>     
                                </div>

                                <div class="col-md-10 col-md-offset-2">
                                <h3>Motivation</h3>
                                </div>

                                <div class="col-md-6 col-md-offset-2">
                                    <div class="form-group">
                                        <div><asp:TextBox runat="server" ID="txtMotivation" TextMode="MultiLine" Rows="3" Columns="100"/></div>                                        
                                    </div>     
                                </div>

                                <div class="col-md-4 col-md-offset-2">
                                    <asp:Button ID="btnSubmitSummary" runat="server" Text="Submit Summary" CssClass="btn btn-success btn-lg" Width="600" />
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    
                                </div>
                            </div>
                            
                        </div>
                        
                    </section>
                </div>
            </div>
        </section>       
    </section>

</asp:Content>
