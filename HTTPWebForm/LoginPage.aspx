<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HTTPWebForm.WebForm1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>Login Page</h1>

        <form method="post">
            <asp:Label ID="UserLBL" for="UserIN" runat="server" Text="Username:"></asp:Label>
            <input id="UserIN" name="UserIN" type="text" />
            <%--<asp:TextBox ID="UserTB" runat="server"></asp:TextBox>--%>
            <asp:Label ID="PassLBL" for="PassIN" runat="server" Text="Password:"></asp:Label>
            <input id="PassIN" name="PassIN" type="text" />
            <%--<asp:TextBox ID="PassTB" runat="server" TextMode="Password"></asp:TextBox>--%>
            <asp:Button ID="SubmitBTN" runat="server" Text="Log In" OnClick="Submit_Click" />
        </form>

    </main>

</asp:Content>
