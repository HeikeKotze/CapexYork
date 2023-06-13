<%@ Page Title="Executive Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExecutiveSummary.aspx.cs" Inherits="CapexYork._ExecutiveSummary" %>

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
                                <h1><strong>Executive Summary</strong></h1>
                            </div>   
                        </header>                      

                        <div class="col-md-6 col-md-offset-2">
                                <h3><strong>Amount requested includes</strong></h3>
                        </div>

                        <div class="panel-body" style="font:bolder">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-2">
                                    <div class="form-group">
                                        <div><textarea id="txtAmountIncludes"></textarea></div>                                     
                                    </div>     
                                </div>

                                <div class="col-md-10 col-md-offset-2">
                                <h3><strong>Motivation</strong></h3>
                                </div>

                                <div class="col-md-6 col-md-offset-2">
                                    <div class="form-group">
                                        <div><textarea id="txtMotivation" name="content"></textarea></div>                                        
                                    </div>     
                                </div>

                                <div class="col-md-4 col-md-offset-2">
                                    <asp:Button ID="btnSummary" runat="server" Text="Next" CssClass="btn btn-success btn-md" Style="width:130px;height:50px" OnClick="btnSummary_Click"/>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Button ID="btnClearPage" runat="server" Text="Clear All" CssClass="btn btn-secondary btn-md" Style="width:100px;height:50px" OnClick="btnClearPage_Click"/>
                                    <asp:Button ID="btnBackButton" runat="server" Text="Back" CssClass="btn btn-secondary btn-md" Style="width:100px;height:50px" OnClick="btnBackButton_Click" />
                                </div>
                           </div>      
                            
                        </div>
                        
                    </section>
                </div>
            </div>
        </section>       
    </section>

</asp:Content>
