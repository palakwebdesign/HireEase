<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userhelp.aspx.cs" Inherits="Userhelp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700|Work+Sans:300,400,700" rel="stylesheet" />
    <link rel="stylesheet" href="fonts/icomoon/style.css" />

    <link rel="stylesheet" href="Home/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Home/css/magnific-popup.css" />
    <link rel="stylesheet" href="Home/css/jquery-ui.css" />
    <link rel="stylesheet" href="Home/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="Home/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="Home/css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="Home/css/animate.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css" />



    <link rel="stylesheet" href="Home/fonts/flaticon/font/flaticon.css" />

    <link rel="stylesheet" href="Home/css/aos.css" />

    <link rel="stylesheet" href="Home/css/style.css" />
</head>
<body>
    <div>

        <div class="site-wrap">

            <div class="site-mobile-menu">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>
            <!-- .site-mobile-menu -->


            <div class="site-navbar-wrap js-site-navbar bg-white">

                <div class="container">
                    <div class="site-navbar bg-light">
                        <div class="py-1">
                            <div class="row align-items-center">
                                <div class="col-2">
                                    <h2 class="mb-0 site-logo"><a href="index.html">Hire<strong class="font-weight-bold">Ease</strong> </a></h2>
                                </div>
                                <div class="col-10">
                                    <nav class="site-navigation text-right" role="navigation">
                                        <div class="container">
                                            <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                                            <ul class="site-menu js-clone-nav d-none d-lg-block">
                                                <li><a href="index.aspx">Home</a></li>
                                                <li><a href="About_us.aspx"></a>About Us</li>
                                                <li><a href="Contact.aspx">Contact</a></li>
                                                <li><a href="Userhelp.aspx">User Help</a></li>
                                                <li><a href="/Login/login1.aspx"><span class="btn btn-search btn-primary btn-block">Post New Job</span></a></li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div style="height: 113px;"></div>

            <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
                <div class="container text-center">
                    <h2 class="mb-0">User Help</h2>
                    <p class="mb-0 unit-6">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
                </div>
            </div>
          
                        <form id="form1" runat="server">
                        <div class="site-section">
                            <div class="container">
                                <div class="row justify-content-center text-center mb-5">
                                        <h2>Frequently Ask Questions</h2>
                                    </div>

                                
                                    <div class="col-md-8">
                                        <div class="accordion unit-8" id="accordion">
                                            <div class="accordion-item">
                                                <h3 class="mb-0 heading">
                                                    <a class="btn-block" data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">What is the name of your company<span class="icon"></span></a>
                                                </h3>
                                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="body-text">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur quae cumque perspiciatis aperiam accusantium facilis provident aspernatur nisi optio debitis dolorum, est eum eligendi vero aut ad necessitatibus nulla sit labore doloremque magnam! Ex molestiae, dolor tempora, ad fuga minima enim mollitia consequuntur, necessitatibus praesentium eligendi officia recusandae culpa tempore eaque quasi ullam magnam modi quidem in amet. Quod debitis error placeat, tempore quasi aliquid eaque vel facilis culpa voluptate.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- .accordion-item -->

                                            <div class="accordion-item">
                                                <h3 class="mb-0 heading">
                                                    <a class="btn-block" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">How much pay for 3  months?<span class="icon"></span></a>
                                                </h3>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="body-text">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- .accordion-item -->

                                            <div class="accordion-item">
                                                <h3 class="mb-0 heading">
                                                    <a class="btn-block" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">Do I need to register?  <span class="icon"></span></a>
                                                </h3>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="body-text">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- .accordion-item -->

                                            <div class="accordion-item">
                                                <h3 class="mb-0 heading">
                                                    <a class="btn-block" data-toggle="collapse" href="#collapseFour" role="button" aria-expanded="false" aria-controls="collapseFour">Who should I contact in case of support.<span class="icon"></span></a>
                                                </h3>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="body-text">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- .accordion-item -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    
     
    
</body>
</html>
