<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="m-0 p-0 bg-cover bg-no-repeat font-sans overflow-hidden" style="background-image: url('../Images/Login.jpg');">
    <form id="form1" runat="server">
        <div class="flex justify-center items-center min-h-screen">
            <div class="w-[450px] bg-white/50 p-10 rounded-3xl shadow-lg text-center">
                <h2 class="mb-6 text-2xl font-serif">Sign Up</h2>

                <div class="mb-5 ">
                    <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email" CssClass="w-[90%] px-3 py-2 border border-blue-500 rounded-2xl font-serif" />
                </div>

                <div class="mb-5 ">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password" CssClass="w-[90%] px-3 py-2 border border-blue-500 rounded-2xl font-serif" />
                </div>

                <div class="mb-5">
                    <asp:TextBox ID="txtConformPassword" runat="server" TextMode="Password" Placeholder="Conform Password" CssClass="w-[90%] px-3 py-2 border border-blue-500 rounded-2xl font-serif" />
                </div>

                <div class="text-center mb-5 font-serif font-bold">
                  <asp:Label ID="lblMessage" runat="server" CssClass="text-red-600"></asp:Label>               
                </div>

                <asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="w-[90%] py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-700 transition font-serif" OnClick="btnRegister_Click" />

                <div class="mt-5 text-sm font-serif">
                    Already have an account? <a href="Login.aspx" class="text-blue-500 hover:underline">Sign in</a>
                </div>

                <asp:Button ID="btnGoogleLogin" runat="server" Text="Sign up with Google" CssClass="w-[90%] py-2 mt-3 bg-white border border-gray-300 text-black rounded-lg font-serif hover:shadow-md transition" />
            </div>
        </div>
    </form>
</body>
</html>
