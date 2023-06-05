<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapexYork._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:white; color:black; width:fit-content; block-size: fit-content; background-color:white">
        
        <h1><img src="Images/york-image.jpg" />York Capex Request Form</h1>
        
        
    </div>
    <h2 style="color:black">Login</h2>
    <div class="panel-body" style="color:black">
            <div class="row">
                <div>
                    <div class="form-group">
                         <asp:Label Text="Username" runat="server" />
                         <asp:TextBox ID="txtID" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Employee Name"/>
                    </div>
                </div>
                <div>
                     <div class="form-group">
                          <asp:Label Text="Password" runat="server" />
                          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Enabled="true" CssClass=" form-control input-sm" placeholder="Employee Password" />
                     </div>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" class="btn btn-success btn-lg" OnClick="btnLogin_Click" />
                </div>
             </div>
         </div>

</asp:Content>
