<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIN</title>
    <link rel="stylesheet" href="Login.css" /> 
</head>
<body>
    
        <div class="loginbox">
            <img src="Images/user.png" alt="Alternative Text" class="user" />
            <h2>SignIn</h2>

            <form runat="server">
                <asp:Label Text="Username" CssClass="username_lbl" runat="server"/>
                <asp:TextBox ID="Username_txtbox" runat="server" CssClass="username_textbox" placeholder="Username"/>

                <asp:Label  Text="Password" CssClass="password_lbl" runat="server"/>
                <asp:TextBox ID="Passowrd_txtbox" TextMode="password" runat="server" CssClass="password_textbox" placeholder="password"/>

                <asp:Button Text="SignIn" CssClass="signin_btn" runat="server" OnClick="Unnamed5_Click"  />
                
                <asp:LinkButton Text="Registration" CssClass="reg_btn" runat="server" href="Registration.aspx"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:LinkButton Text="Home" CssClass="back_btn" runat="server" href="index.html"/>
                <br />
                <asp:Label ID="msg_lbl" runat="server" Enabled="false"/>


            </form>

        </div>
  
</body>
</html>