<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication2.Registration" %>

<!DOCTYPE html>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="Registration.css" />
    
</head>
<body>
   
    <div class="loginbox">
        <img src="Images/Reg_icon.png" alt="alternative Text" class="user"/>
        <h2>Register</h2>
        <form runat="server" style="height: 439px">

            <asp:Label ID="Email_lbl" runat="server" Text="Email" CssClass="Email_lbl"/>
            <asp:TextBox ID="Email_textbox" runat="server" CssClass="Email_textbox" placeolder="Email"/>

            <asp:Label ID="Username_lbl" runat="server" Text="Username" OnTextChangeed="txtusername_TextChanged" AutoPostBack="true" CssClass="username_lbl"/>
            <asp:Label ID="CheckuserAvailable" runat="server" Text="Label" Visible="false"></asp:Label>
            <asp:TextBox ID="Username_textbox" runat="server" CssClass="Username_textbx" placeolder="Username"/>

            <asp:Label ID="Password_lbl" runat="server" Text="Password" CssClass="password_lbl"/>
            <asp:TextBox type="password" ID="Password_textbox" runat="server" CssClass="Password_textbx" placeolder="********"/>&nbsp;
            <asp:CheckBox ID="CheckBox1" Cssclass="check_box_msg" runat="server" Text="Show Password" onClick="myFunction()" ForeColor="WhiteSmoke" />
            <br />
            <br />
           
           
            <asp:Button ID="Submit_btn" runat="server" Text="Submit" CssClass="Submit_btn" OnClick="Submit_btn_Click" />
          
           
            <asp:LinkButton ID="Login_btn" runat="server" CssClass="Login_btn" Text="Go to LogIn" href="Login.aspx"/>

            <br />
            <br />

            <asp:Label ID="Submit_msg" runat="server" Text="Label" CssClass="Submit_msg" Visible="false"></asp:Label>
        </form>

       

    </div>

    

  <script src="Registration.js"></script>
</body>
</html>