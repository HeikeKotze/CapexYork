<%@ Page Title="Main Request Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainRequestForm.aspx.cs" Inherits="CapexYork._MainRequestForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content" style="color:black; margin-top:40px">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">    
                    <section class="panel" style="background-color:white">
                        <!--HEADER-->
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-4">
                                <img src="Images/PicYork.png" class="logo" height="100" width="300" />
                            </div>
                            <br />
                            <div class="col-md-6 col-md-offset-4">
                                <h1><strong>Main Request Form</strong></h1>
                            </div>
                        </header>

                        <!--SUB-HEADER-->
                        <div class="col-md-6 col-md-offset-2">
                            <h3><strong>Office Use</strong></h3>
                        </div>

                        <!--PANEL BODY-->
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

                            <!--SUB-HEADER-->
                            <div class="col-md-6 col-md-offset-2">
                                <h3><strong>Identification</strong></h3>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Project Title" runat="server" />
                                        <asp:TextBox ID="txtProjectTitle" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Project Title" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Mill / Department" runat="server" />
                                        <div>
                                            <asp:DropDownList ID="drpMillorDepartment" runat="server" AutoPostBack="false" style="width:300px; height:30px"></asp:DropDownList>
                                        </div>
  
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
                                            <asp:DropDownList ID="drpAssetCategory" runat="server" AutoPostBack="false" style="width:300px; height:30px"></asp:DropDownList>
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
                                            <asp:DropDownList ID="drpProjectClassification" runat="server" AutoPostBack="false" style="width:300px; height:30px"></asp:DropDownList>
                                        </div> 
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Label Text="Project Short Description" runat="server"/>
                                        <div>
                                            <textarea runat="server" id="Description" name="tiny" style="width: 1532px"></textarea>
                                        </div>   
                                    </div>    
                                </div>                                 
                            </div>
                   
                            
                            
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
                                        <asp:TextBox ID="txtPaybackPeriod" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Months"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="IRR" runat="server" />
                                        <asp:TextBox ID="txtIRR" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R" />
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="NPV" runat="server" />
                                        <asp:TextBox ID="txtNPV" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="R"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Project Start-up Date" runat="server"/>
                                        <asp:TextBox ID="txtStartupDate" runat="server" Enabled="true" CssClass=" form-control input-sm" type="date"/>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label Text="Project Manager" runat="server" />
                                        <asp:TextBox ID="txtProjectManager" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Project Manager"/>
                                    </div>
                                </div>
                            </div>

                            <hr />
                            <br />

                            <!--BUTTONS-->
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success btn-md" style="width:100px; height:50px " OnClick="btnSubmit_Click"/>
                                </div>
                                <div class="col-md-4 col-md-offset-1">           
                                    <asp:Button ID="btnClear" runat="server" Text="Clear All" CssClass="btn btn-secondary btn-md" style="width:100px;height:50px" OnClick="btnClear_Click" />
                                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-secondary btn-md" style="width:100px;height:50px" OnClick="btnBack_Click" />
                                </div>
                            </div>


                       </div> 
                    </section>
                </div>
            </div>
        </section>       
    </section>
</asp:Content>
