<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>MySQL Connection Test</title>
<style>
    .alert-success {
        color: #155724;
        background-color: #d4edda;
        border-color: #c3e6cb;
        padding: 10px;
        border-radius: 4px;
    }
    .alert-danger {
        color: #721c24;
        background-color: #f8d7da;
        border-color: #f5c6cb;
        padding: 10px;
        border-radius: 4px;
    }
    .table {
        width: 100%;
        margin-bottom: 1rem;
        background-color: transparent;
    }
</style>
</head>
<body>
           <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>MySQL Database Connection Test</h2>
            
            <div class="row mb-3">
                <div class="col-md-6">
                    <asp:Button ID="btnTestConnection" runat="server" 
                        Text="Test Connection" 
                        OnClick="btnTestConnection_Click" 
                        CssClass="btn btn-primary" />
                        
                    <asp:Button ID="btnShowUsers" runat="server" 
                        Text="Show Users" 
                        OnClick="btnShowUsers_Click" 
                        CssClass="btn btn-secondary ms-2" 
                        Visible="false" />
                </div>
            </div>
            
            <asp:Panel ID="pnlResults" runat="server" Visible="false" class="mt-3">
                <h3>Test Results:</h3>
                <asp:Label ID="lblConnectionStatus" runat="server" Text=""></asp:Label>
                <br /><br />
                
                <asp:GridView ID="gvUsers" runat="server" 
    Visible="false" 
    CssClass="table table-striped table-bordered"
    AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Username" HeaderText="Username" />
        <asp:BoundField DataField="Password Status" HeaderText="Password Status" />
    </Columns>
    <EmptyDataTemplate>
        No users found in the database.
    </EmptyDataTemplate>
</asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
