<%@ Page Title="MainRequestForm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainRequestForm.aspx.cs" Inherits="CapexYork.WebForm1" %>
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
                                <h1>Main Request Form</h1>
                            </div>   
                        </header>

                        <div class="col-md-6 col-md-offset-5">
                                <h3>Office Use</h3>
                            </div>

                        <div class="panel-body" style="font:bolder">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Project Number" runat="server" />
                                        <asp:TextBox ID="txtProjectNum" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Project Number"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Location Cost Code" runat="server" />
                                        <asp:TextBox ID="txtLocationCostCode" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Location Cost Code"/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Balance Sheet Code" runat="server" />
                                        <asp:TextBox ID="txtBalanceSheetCode" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Balance Sheet Code"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Company" runat="server" />
                                        <asp:TextBox ID="txtCompany" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Company"/>
                                    </div>
                                </div>
                            </div>

                            <hr />

                            <div class="col-md-6 col-md-offset-5">
                                <h3>Identification</h3>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Project Title" runat="server" />
                                        <asp:TextBox ID="txtProjectTitle" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Project Title"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Mill / Department" runat="server" />
                                        <asp:TextBox ID="txtMillorDepartment" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Mill / Department"/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Project Initiated By" runat="server" />
                                        <asp:TextBox ID="txtProjectInitiated" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Initiated By"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Asset Category" runat="server" />
                                        <div>
                                            <asp:DropDownList ID="drpAssetCategory" runat="server" AutoPostBack="true" style="width:300px; height:30px">
                                                <asp:ListItem Selected="true" Value="Land, clearance and levelling"> Land,clearance and levelling </asp:ListItem>
                                                <asp:ListItem Value="Afforestation">Afforestation</asp:ListItem>
                                                <asp:ListItem Value="Bearer Fruit">Bearer Fruit</asp:ListItem>
                                                <asp:ListItem Value="Buildings">Buildings</asp:ListItem>
                                                <asp:ListItem Value="Leasehold Improvements">Leasehold Improvements</asp:ListItem>
                                                <asp:ListItem Value="Utility, Plant & Equipment">Utility, Plant & Equipment</asp:ListItem>
                                                <asp:ListItem Value="Utility Vehicles">Utility Vehicles</asp:ListItem>
                                                <asp:ListItem Value="Production, Plant & Equipment">Production, Plant & Equipment</asp:ListItem>
                                                <asp:ListItem Value="Production Vehicles">Production Vehicles</asp:ListItem>
                                                <asp:ListItem Value="Office furniture & Equipment">Office furniture & Equipment</asp:ListItem>
                                                <asp:ListItem Value="Computer hardware & software">Computer hardware & software</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>                                       
                                    </div>

                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Total Cost" runat="server" />
                                        <asp:TextBox ID="txtCost" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Cost"/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Project Classification" runat="server" />
                                        <div>
                                            <asp:DropDownList ID="drpProjectClassification" runat="server" AutoPostBack="true" style="width:300px; height:30px">
                                                <asp:ListItem Selected="true" Value="Expansion"> Expansion </asp:ListItem>
                                                <asp:ListItem Value="Profit Improvement">Profit Improvement</asp:ListItem>
                                                <asp:ListItem Value="Cost Savings">Cost Savings</asp:ListItem>
                                                <asp:ListItem Value="Replacement">Replacement</asp:ListItem>
                                                <asp:ListItem Value="Environmental">Environmental</asp:ListItem>
                                                <asp:ListItem Value="Safety">Safety</asp:ListItem>
                                                <asp:ListItem Value="Social Expenditure">Social Expenditure</asp:ListItem>
                                                <asp:ListItem Value="Land Acquisition">Land Acquisition</asp:ListItem>
                                                <asp:ListItem Value="Social Expenditure">Social Expenditure</asp:ListItem>
                                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </div> 
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Project Short Description" runat="server" />
                                        <div><asp:TextBox runat="server" ID="MyBox" TextMode="MultiLine" Rows="3" Columns="100"/></div>                                        
                                    </div>     
                                </div>
                            </div>

                            <hr />
                            
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Amount This Request" runat="server" />
                                        <asp:TextBox ID="txtAmountThisRequest" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Previously Authorized" runat="server" />
                                        <asp:TextBox ID="txtPreviouslyAuthorized" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Total Authorization" runat="server" />
                                        <asp:TextBox ID="txtTotalAuthorization" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Amount in Budget" runat="server" />
                                        <asp:TextBox ID="txtAmountinBudget" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R000,00"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Write Off Amount" runat="server" />
                                        <asp:TextBox ID="txtWriteOffAmount" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R0"/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Payback Period" runat="server" />
                                        <asp:TextBox ID="txtPaybackPeriod" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="IRR" runat="server" />
                                        <asp:TextBox ID="txtIRR" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="NPV" runat="server" />
                                        <asp:TextBox ID="txtNPV" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Project Start-up Date" runat="server"/>
                                        <asp:TextBox ID="txtStartupDate" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="yyyy-mm-dd"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Project Manager" runat="server" />
                                        <asp:TextBox ID="txtProjectManager" runat="server" Enabled="true" CssClass=" form-control input-sm" />
                                    </div>
                                </div>
                            </div>

                            <hr />

                            <div class="col-md-6 col-md-offset-5">
                                <h3>Authorizations</h3>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <asp:Label Text="Authorizations" runat="server" />
                                    <br />
                                    <br />
                                    <asp:CheckBoxList ID="chbAuthorizations" runat="server" Enabled="true" onselectedindexchanged="chbAuthorizations_SelectedIndexChanged">         
                                            <asp:ListItem>Initiator</asp:ListItem>
                                            <asp:ListItem>IT Manager</asp:ListItem>
                                            <asp:ListItem>Business Unit Manager</asp:ListItem>
                                            <asp:ListItem>Department Manager</asp:ListItem>
                                            <asp:ListItem>Financial Manager</asp:ListItem>
                                            <asp:ListItem>CFO</asp:ListItem>
                                            <asp:ListItem>CEO</asp:ListItem>                                                                             
                                    </asp:CheckBoxList>
                                </div>
                                
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group"><br /><br />
                                        <asp:Label ID="txtLabel" runat="server"></asp:Label>                                        
                                    </div>
                                </div>
                            </div>

                            <br />

                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success btn-lg" width="600" OnClick="btnSubmit_Click"/>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Button ID="btnClear" runat="server" Text="Clear All" CssClass="btn btn-secondary btn-lg" Width="600" />
                                </div>
                            </div>


                            </div>

                       
                    </section>
                </div>
            </div>
        </section>       
    </section>
</asp:Content>
