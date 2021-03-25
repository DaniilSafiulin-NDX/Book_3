<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Подключение.aspx.vb" Inherits="NoteBook2._0.Подключение" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 421px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Имя"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="172px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Фамилия"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Телефон"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            Адрес<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            Почта<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            Логин<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            Пароль<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Добавить" OnClick="Button1_Click" />
        </div>
        <p style="width: 1309px">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                    <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                    <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Записная_книжкаConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [id] = @id" InsertCommand="INSERT INTO [Users] ([Name], [Surname], [Phone], [Adress], [Mail], [Login], [Password]) VALUES (@Name, @Surname, @Phone, @Adress, @Mail, @Login, @Password)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Surname] = @Surname, [Phone] = @Phone, [Adress] = @Adress, [Mail] = @Mail, [Login] = @Login, [Password] = @Password WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Adress" Type="String" />
                <asp:Parameter Name="Mail" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Adress" Type="String" />
                <asp:Parameter Name="Mail" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
