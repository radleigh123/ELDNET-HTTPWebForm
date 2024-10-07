<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HTTPWebForm.WebForm2" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <section id="hero" class="hero section dark-background">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center aos-init aos-animate" data-aos="zoom-out">
                        <h1>Administrator Page</h1>
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </p>
                        <div class="d-flex">
                            <a class="btn-get-started">Test</a>
                        </div>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2 hero-img aos-init aos-animate" data-aos="zoom-out" data-aos-delay="200">
                        <%--<img src="~/Content/images/hero-img.png" class="img-fluid animated" alt="">--%>
                        <asp:Image runat="server" ImageUrl="~/Content/images/hero-img.png" CssClass="img-fluid animated" />
                    </div>
                </div>
            </div>
        </section>

        <section id="about" class="about section">
            <div class="container section-title aos-init aos-animate" data-aos="fade-up">
                <h2>About Us</h2>
            </div>

            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-6 content aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                        <ul>
                            <li><i class="bi bi-check2-circle"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                            <li><i class="bi bi-check2-circle"></i><span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                            <li><i class="bi bi-check2-circle"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo</span></li>
                        </ul>
                    </div>

                    <div class="col-lg-6 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                        <p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
                    </div>

                </div>

            </div>
        </section>

    </main>

</asp:Content>
