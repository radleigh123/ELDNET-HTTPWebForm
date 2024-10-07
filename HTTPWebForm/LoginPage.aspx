<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HTTPWebForm.WebForm1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <h2 class="mb-3">Login Page</h2>

        <form method="post">
            <div class="form-floating mb-3" style="width: clamp(150px, 400px, 100%);">
                <%--<input id="UserIN" name="UserIN" type="text" class="form-control" placeholder="user" oninput="Check_Input" required/>--%>
                <asp:TextBox ID="UserIN" runat="server" name="UserIN" type="text" CssClass="form-control" Placeholder="user" AutoPostBack="true" OnTextChanged="UserIN_TextChanged" required="true" />
                <label for="UserIN">Username</label>
            </div>
            <div class="mb-3 form-floating" style="width: clamp(150px, 400px, 100%);">
                <%--<input id="PassIN" name="PassIN" type="password" class="form-control" placeholder="pass" required/>--%>
                <asp:TextBox ID="PassIN" runat="server" name="PassIN" type="password" CssClass="form-control" Placeholder="pass" required="true" />
                <label for="PassIN">Password</label>
            </div>
            <div class="form-check mb-2 position-relative" style="width: clamp(150px, 400px, 100%);">
                <div class="position-absolute end-0">
                    <asp:CheckBox ID="RememberCB" runat="server" Text="&nbsp;Remember Me" />
                </div>
            </div>
            <div class="mb-3 text-center" style="width: clamp(150px, 400px, 100%);">
                <asp:Button ID="SubmitBTN" runat="server" Text="Log In" CssClass="btn btn-primary" OnClick="Submit_Click" />
            </div>
        </form>

    </main>

</asp:Content>
