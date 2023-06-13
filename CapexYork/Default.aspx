<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapexYork._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:white; color:black; width:fit-content; block-size: fit-content; background-color:white">
        
        <h1><img src="Images/york-image.jpg" />York Capex Request Form</h1>
        
        
    </div>
    <h2 style="color:white">Login</h2>
    <div class="panel-body" style="color:black">
            <div class="row">
                <div>
                    <div class="form-group" style="color:white">
                         <asp:Label Text="Username" runat="server" />
                         <asp:TextBox ID="txtID" runat="server" Enabled="true" CssClass=" form-control input-sm" placeholder="Username" />
                    </div>
                </div>
                <div>
                     <div class="form-group" style="color:white">
                          <asp:Label Text="Password" runat="server" />
                          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Enabled="true" CssClass=" form-control input-sm" placeholder="Password" />
                     </div>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" class="btn btn-success btn-md" OnClick="btnLogin_Click" style="width:100px;height:50px"/>
                </div>
             </div>
         </div>

</asp:Content>
