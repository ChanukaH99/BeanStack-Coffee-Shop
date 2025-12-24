<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="m-0 p-0 overflow-hidden font-sans bg-cover bg-no-repeat" style="background-image: url('../Images/Login.jpg');">
    <form id="form1" runat="server">
        <div class="w-[450px] bg-white/50 mt-[150px] mx-auto p-10 rounded-[15px] shadow-md text-center">
            <h2 class="mb-[35px] font-serif text-2xl">Sign in</h2>

          <!--  Email Textbox -->
            <div class="mb-5">
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email"
                    CssClass="w-[90%] p-2 border border-blue-500 rounded-2xl font-serif" />
            </div>

            <!--  Password Textbox -->
            <div class="mb-5">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password"
                    CssClass="w-[90%] p-2 border border-blue-500 rounded-2xl font-serif" />
            </div>

            <!--  Error message Show -->
            <div class="text-left mb-5 pl-5 font-serif text-center">
                <asp:Label ID="lblRememberMessage" runat="server" CssClass="block text-red-600 text-sm" ></asp:Label>
            </div>
            <!--  Login Button -->
            <asp:Button ID="btnLogin" runat="server" Text="Sign in"
                CssClass="w-[90%] p-2 bg-blue-500 text-white rounded-lg cursor-pointer font-serif hover:bg-blue-700" OnClick="btnLogin_Click" />
              <!--  Googale Button -->
            <asp:Button ID="btnGoogleLogin" runat="server" Text="Sign in with Google"
                CssClass="w-[90%] p-2 bg-white text-black border border-gray-300 rounded-lg mt-3 font-serif" />

              <!-- Link Register page-->
            <div class="mt-5 text-sm font-serif">
                Need an account? <a href="Register.aspx" class="text-blue-500 underline">Create one</a>
            </div>
        </div>
    </form>
</body>

</html>
