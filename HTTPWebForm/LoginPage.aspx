<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HTTPWebForm.WebForm1" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <form method="post">
            <div class="container">
                <h2 class="mb-3">Login Page</h2>

                <div class="row row-cols-2">
                    <div class="form-floating mb-3 col" style="width: clamp(150px, 400px, 100%);">
                        <asp:TextBox ID="UserIN"
                            runat="server"
                            type="text"
                            CssClass="form-control"
                            Placeholder="user" />
                        <label for="UserIN">Username</label>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator ID="UserRFV" runat="server"
                            ControlToValidate="UserIN"
                            ErrorMessage="Username is required"
                            ForeColor="Red"
                            Visible="true"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="UserREV" runat="server"
                            ControlToValidate="UserIN"
                            ValidationExpression=".{5,}"
                            ErrorMessage="Username must be at least 5 characters"
                            ForeColor="Red"
                            Visible="true"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="row row-cols-2">
                    <div class="mb-3 form-floating col" style="width: clamp(150px, 400px, 100%);">
                        <asp:TextBox ID="PassIN"
                            runat="server"
                            type="password"
                            CssClass="form-control"
                            Placeholder="pass" />
                        <label for="PassIN">Password</label>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator ID="PassRFV" runat="server"
                            ControlToValidate="PassIN"
                            ErrorMessage="Password is required"
                            ForeColor="Red"
                            Visible="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-check mb-2 position-relative" style="width: clamp(150px, 400px, 100%);">
                        <div class="position-absolute end-0">
                            <asp:CheckBox ID="RememberCB" runat="server" Text="&nbsp;Remember Me" />
                        </div>
                    </div>
                </div>


                <div class="mb-3 text-center" style="width: clamp(150px, 400px, 100%);">
                    <asp:Button ID="SubmitBTN" runat="server" Text="Log In" CssClass="btn btn-primary" OnClick="Submit_Click" />
                </div>
            </div>

        </form>

    </main>

</asp:Content>
