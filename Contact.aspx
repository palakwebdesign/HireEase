<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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
                    <h2 class="mb-0">Contact Us</h2>
                    <p class="mb-0 unit-6">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
                </div>
            </div>

        </div>

        <div class="site-section bg-light">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-lg-8 mb-5">



                        <form class="p-5 bg-white" runat="server">

                            <div class="row form-group">
                                <div class="col-md-12 mb-3 mb-md-0">
                                    <label class="font-weight-bold" for="fullname">Full Name</label>
                                    <input type="text" id="fullname" class="form-control" placeholder="Full Name">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="font-weight-bold" for="email">Email</label>
                                    <input type="email" id="email" class="form-control" placeholder="Email Address">
                                </div>
                            </div>


                            <div class="row form-group">
                                <div class="col-md-12 mb-3 mb-md-0">
                                    <label class="font-weight-bold" for="phone">Phone</label>
                                    <input type="text" id="phone" class="form-control" placeholder="Phone #">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="font-weight-bold" for="message">Message</label>
                                    <textarea name="message" id="message" cols="30" rows="5" class="form-control" placeholder="Say hello to us"></textarea>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input type="submit" value="Send Message" class="btn btn-primary pill px-4 py-2">
                                </div>
                            </div>


                        </form>
                    </div>
                    </div>

                    <div class="site-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                    <div>
                                        <h2 class="footer-heading mb-4 text-white"><span class="icon-room"></span>Location</h2>
                                        <p class="mb-0">
                                            New York - 2398
                                            <br>
                                            10 Hadson Carl Street
                                        </p>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div>
                                        <h2 class="footer-heading mb-4 text-white"><span class="icon-clock-o"></span>Service Times</h2>
                                        <p class="mb-0">
                                            Wednesdays at 6:30PM - 7:30PM
                                            <br>
                                            Fridays at Sunset - 7:30PM
                                            <br>
                                            Saturdays at 8:00AM - Sunset
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h2 class="footer-heading mb-4 text-white"><span class="icon-comments"></span>Get In Touch</h2>
                                    <p class="mb-0">
                                        Email: info@yoursite.com
                                        <br>
                                        Phone: (123) 3240-345-9348
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>
