<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td rowspan="4">
                &nbsp;&nbsp;
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
&nbsp;
            </td>
            <td>
                Customer Name
            </td>
            <td>
            <asp:TextBox ID="txtCoustomerName" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                Customer Enail
            </td>
            <td>
            <asp:TextBox ID="txtCoustomerEmail" runat="server"></asp:TextBox>
                
<tr>
            <td>
                Customer Contact No
            </td>
            <td>
            <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                
            </td>
        </tr>            </td>
        </tr>
        <tr>
            <td>
                Customer Address
            </td>
            <td>
            <asp:TextBox ID="txtCoustomerAddress" runat="server"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                 
                <asp:Button ID="Btddlt" runat="server" Text="Delete Record" OnClick="Btddlt_Click" />
            </td>
            <td>
                 
            </td>
            <td>
                <asp:Button ID="btnAddCoustomer" runat="server" Text="Add Customer" OnClick="btnAddCoustomer_Click" />
                 <asp:Button ID="BtnUpdateCustomer" runat="server" Text="Update Customer" OnClick="btnUpdateCoustomer_Click" />
                
            </td>
        </tr>

    </table>
        <asp:Label ForeColor="Red" ID="lblMessage" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
    </form>
</body>
</html>
