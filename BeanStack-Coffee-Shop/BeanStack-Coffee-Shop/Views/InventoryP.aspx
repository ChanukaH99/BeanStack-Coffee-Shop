<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryP.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.InventoryP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://cdn.tailwindcss.com"></script>
</head>
    <body class="bg-gray-100">
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
       <nav class="relative z-10 w-full max-w-[1000px] mx-auto mt-5 flex flex-wrap lg:flex-nowrap justify-between items-center bg-white px-4 sm:px-8 lg:px-12 py-4 rounded-2xl shadow-md border-2 border-gray-800">
    <!-- Logo/Brand -->
    <div class="flex items-center w-full lg:w-auto justify-center lg:justify-start mb-4 lg:mb-0">
        <h2 class="text-4xl font-medium font-clicker-script">BeanStack</h2>
    </div>
    
    <!-- Main Navigation Links -->
    <div class="flex-1 flex justify-center w-full lg:w-auto mb-4 lg:mb-0 font-serif">
        <ul class="flex flex-col lg:flex-row space-y-2 lg:space-y-0 lg:space-x-10 text-lg font-medium">
            <li><a href="AdminHome.aspx" class="hover:text-blue-500">Home</a></li>
            <li><a href="Shop.aspx" class="hover:text-blue-500">Shop</a></li>
            <li><a href="About.aspx" class="hover:text-blue-500">About Us</a></li>
            <li><a href="InventoryP.aspx" class="text-blue-500 font-semibold">Inventory</a></li>
        </ul>
    </div>
    
    <!-- Admin Logout Button -->
    <div class="flex w-full lg:w-auto justify-center lg:justify-end">
        <ul class="flex space-x-4 list-none m-0 p-0">
            <li id="liLogout" runat="server">
                <asp:LinkButton ID="btnLogout"
                                runat="server"
                                CssClass="bg-red-500 text-white px-4 py-2 text-base rounded hover:bg-red-600 hover:shadow-md transition-all"
                                OnClick="btnLogout_Click">
                    Logout
                </asp:LinkButton>
            </li>
        </ul>
    </div>
</nav>

          <!-- Main Content -->
        <div class="container mx-auto px-4 py-8 w-[1200px]">
            <h1 class="text-3xl  font-serif font-bold mb-6 w-full h-[50px] flex items-center px-4 bg-[#BFFE04]">
    Admin Inventory Management
</h1>
            
            <!-- Add Coffee Form -->
            <div class="bg-white font-serif  p-6 rounded-lg shadow-md mb-8">
                <h2 class="text-xl font-semibold mb-4">Add New Coffee Item</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label class="block text-gray-700 mb-2">Coffee Name</label>
                        <asp:TextBox ID="txtCoffeeName" runat="server" CssClass="w-full px-3 py-2 border rounded-md"></asp:TextBox>
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Price</label>
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="w-full px-3 py-2 border rounded-md" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="md:col-span-2">
                        <label class="block text-gray-700 mb-2">Description</label>
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="w-full px-3 py-2 border rounded-md" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </div>
                    <div>
                        <label class="block text-gray-700 mb-2">Image Upload</label>
                        <asp:FileUpload ID="fileImage" runat="server" CssClass="w-full" />
                    </div>
                </div>
                <div class="mt-4 flex justify-end">
                    <asp:Button ID="btnAddCoffee" runat="server" Text="Add Coffee" 
                        CssClass="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md transition-all" OnClick="btnAddCoffee_Click" />
                </div>
            </div>
            
            <!-- Inventory Table -->
            <div class="bg-white font-serif rounded-lg shadow-md overflow-hidden">
                <h2 class="text-xl font-semibold p-4 border-b">Current Inventory</h2>
                <div class="overflow-x-auto">
                    <asp:GridView ID="gvInventory" runat="server" AutoGenerateColumns="False"
                        CssClass="min-w-full divide-y divide-gray-200" HeaderStyle-CssClass="bg-gray-50"
                        RowStyle-CssClass="hover:bg-gray-50 transition-all" AlternatingRowStyle-CssClass="bg-gray-50">
                          <Columns>
                                <asp:BoundField DataField="CoffeeName" HeaderText="Coffee Name" 
                                    HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />

                                <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" 
                                    HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />

                                <asp:BoundField DataField="CreatedAt" HeaderText="Created Date" DataFormatString="{0:yyyy-MM-dd}" 
                                    HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />

                                <asp:BoundField DataField="UpdatedAt" HeaderText="Updated Date" DataFormatString="{0:yyyy-MM-dd}" 
                                    HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />

                                <asp:TemplateField HeaderText="Actions" 
                                    HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    <ItemTemplate>
                                        <div class="flex space-x-2">
                                            <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("Id") %>'
                                                CssClass="text-blue-500 hover:text-blue-700">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("Id") %>'
                                                CssClass="text-red-500 hover:text-red-700">Delete</asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                         <EmptyDataTemplate>
        <tr class="bg-white  text-center">
            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Ethiopian Yirgacheffe</td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">$12.99</td>
            <td class="px-6 py-4 text-sm text-gray-500">A bright, floral coffee with notes of lemon and blueberry</td>
           
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                <div class="flex space-x-2">
                    <a href="#" class="text-blue-500 hover:text-blue-700">Edit</a>
                    <a href="#" class="text-red-500 hover:text-red-700">Delete</a>
                </div>
            </td>
        </tr>
    </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
