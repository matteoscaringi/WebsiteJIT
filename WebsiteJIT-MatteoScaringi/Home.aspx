<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebsiteJIT_MatteoScaringi.Pages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>JIT - Home</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <section id="hero" class="hero">
            <div class="container position-relative">
                <div class="row gy-5" data-aos="fade-in">
                    <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
                        <h2>Welkom bij <span>Junior IT Academy</span></h2>
                        <p>De toekomst van informatica start bij ons.</p>
                        <div class="d-flex justify-content-center justify-content-lg-start">
                            <a <%--href="#about"--%> class="btn-get-started">Start hier</a>
                            <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox btn-watch-video d-flex align-items-center"></a>
                        </div>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2">
                        <img src="./img/Teamfoto.JPG" class="img-fluid rounded" alt="" data-aos="zoom-out" data-aos-delay="100">
                    </div>
                </div>
            </div>

            <div class="icon-boxes position-relative">
                <div class="container position-relative">
                    <div class="row gy-4 mt-5 justify-content-center"> <!-- Add justify-content-center class -->
                        <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
                            <div class="icon-box">
                                <div class="icon"><i class="bi bi-easel"></i></div>
                                <h4 class="title"><a href="" class="stretched-link">Scratch</a></h4>
                            </div>
                        </div><!--End Icon Box -->

                        <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
                            <div class="icon-box">
                                <div class="icon"><i class="bi bi-gem"></i></div>
                                <h4 class="title"><a href="" class="stretched-link">Internet veiligheid</a></h4>
                            </div>
                        </div><!--End Icon Box -->

                        <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
                            <div class="icon-box">
                                <div class="icon"><i class="bi bi-geo-alt"></i></div>
                                <h4 class="title"><a href="" class="stretched-link">Blocky</a></h4>
                            </div>
                        </div><!--End Icon Box -->
                    </div>
                </div>

            </div>
        </div>
    </div>
    </section>
    </form>
</asp:Content>