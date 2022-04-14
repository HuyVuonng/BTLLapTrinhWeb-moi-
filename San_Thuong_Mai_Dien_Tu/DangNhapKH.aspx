﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhapKH.aspx.cs" Inherits="San_Thuong_Mai_Dien_Tu.DangNhapKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link href="fonts/fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
</head>
<body>
      
        <header class="header" id="header">
        <div class="grid">
            <nav class="header__navbar ">


                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item--has-notify">
                        <a href="" class="header__navbar-item-link"> <i class="header_napa-icon far fa-bell"></i>
                            Thông báo</a>
                        <div class="header_notify">
                            <header class="header_notify-header">
                                <h3>Thông báo mới nhận</h3>
                            </header>
                            <ul class="header_notify-list">
                                <li class="header_notify-item">
                                    <a href="#" class="header_notify-link">
                                        <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn" alt=""
                                            class="header_notify-img">
                                        <div class="header_notify-info">
                                            <span class="header_notify-name">Mỹ phẩm Ohui chính hãng </span>
                                            <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chính
                                                hãng</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="header_notify-item">
                                    <a href="#" class="header_notify-link">
                                        <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn" alt=""
                                            class="header_notify-img">
                                        <div class="header_notify-info">
                                            <span class="header_notify-name">Mỹ phẩm Ohui chính hãng</span>
                                            <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chính
                                                hãng</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="header_notify-item">
                                    <a href="#" class="header_notify-link">
                                        <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn" alt=""
                                            class="header_notify-img">
                                        <div class="header_notify-info">
                                            <span class="header_notify-name">Mỹ phẩm Ohui chính hãng</span>
                                            <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chính
                                                hãng</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <footer class="header_notify-footer">
                                <a href="" class="header_notify-footer-btn">Xem tất cả</a>
                            </footer>
                        </div>
                    </li>
                    <li class="header__navbar-item">
                        <a href="" class="header__navbar-item-link"><i
                                class="header_napa-icon far fa-question-circle"></i>Trợ giúp</a>
                    </li>
                   
                </ul>
            </nav>
            <!-- header with search -->
            <div class="header-with-search">
                <div class="header_logo">
                    <a href="/TrangChu.aspx" class="header_logo-link">
                        <img src="img/logo3.png" alt="">
                        <span class="title">Shopping Vui</span>
                    </a>
                </div>

                <div class="header_search">
                    <div class="header_search-input-wrap">
                        <input type="text" class="header_search-input" id="search"
                            placeholder="Nhập để tìm kiêm sản phẩm">
                    </div>

                    <button class="header_search-btn">
                        <i class="header_search-btn-icon fas fa-search"></i>
                    </button>
                </div>
                <!-- cart -->
                <div class="header_cart">
                    <div class="header_cart-wrap">
                        <a href=""><i class="header_cart-icon fas fa-shopping-cart"></i>


                           
                    </div>


                </div>
            </div>
            <div class="header_nav">

                <ul class="nav_list l-12">
                        <li class="nav_list_item"><a href="/TrangChu.aspx" class="nav_list_item_link">Trang chủ</a></li>
                        <li class="nav_list_item"><a href="/TrangChu.aspx?modul=QuanAo" class="nav_list_item_link">Quần áo</a></li>
                        <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoGiaDung" class="nav_list_item_link">Đồ gia dụng</a></li>
                        <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoDienTu" class="nav_list_item_link">Đồ điện tử</a></li>
                        <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoChoTre" class="nav_list_item_link">Đồ cho trẻ</a></li>
                    </ul>
            </div>
        </div>
    </header>


    <header class="header-mobile">
        <div class="grid wide">
            <div class="header-mobi-nav">
                <div class="header-mobi-menu-item" id="header-mobi-menu-item">
                    <i class="header-mobi-menu-icon fas fa-bars"></i>
                </div>
                <div class="header_logo">
                    <a href="/TrangChu.aspx" class="header_logo-link">
                        <img src="img/logo3.png" alt="">
                        <span class="title">Shopping Vui</span>
                    </a>
                </div>
                <div class="header_cart">
                    <a href="" class="link_cart">
                        <div class="header_cart-wrap">
                            <i class="header_cart-icon fas fa-shopping-cart"></i>

                        </div>
                    </a>
                </div>
            </div>

        </div>
    </header>

    <!-- modal-header-->
    <div class="modal" id="modal">
        <div class="moda_body">
            login-form
            <div class="auth-form" id="auth-form-login">
                <div class="auth-form_container" id="auth-form_container-login">
                    <div class="auth-form_header">
                        <h3 class="auth-form_heading">Đăng Nhập</h3>
                        <span class="auth-form_swith-btn" id="auth-form_swith-btn-register"><a
                                class="auth-form_swith-btn-a" href="DangKyKH.aspx">Đăng ký</a></span>
                    </div>

                   <form id="Form1" name="Form1" method="post" runat="server" >
                        <div class="auth-form_form">
                        <div class="auth-form_group">
                            <input type="text" class="auth-form_input" id="Email" name="Email" placeholder="Nhập email của bạn">
                        </div>
                        <div class="auth-form_group">
                            <input type="password" class="auth-form_input" id="MK" name="MK" placeholder="Nhập mật khẩu của bạn">
                        </div>

                    </div>

                    <div class="auth-form_aside">
                        <div class="auth-form_help">
                            <a href="/QuenMK.aspx" class="auth-form_help-link auth-form_help-forgot">Quên mật khẩu</a>
                            <span class="auth-form_help-sparate"></span>
                            <a href="" class="auth-form_help-link">Cần trợ giúp?</a>
                        </div>
                    </div>

                    <div class="auth-form_control">
                        <button class="btn btn-normal auth-form_control-back">TRỞ LẠI</button>
                        <button class="btn btn-primary">ĐĂNG NHẬP</button>
                    </div>
                   </form>
                </div>

                <div class="social">
                    <a href="" class="social--facebook btn btn--size-s btn-with-icon">
                        <i class="social-icon fab fa-facebook-square"></i>
                        <span class="social-label">Facebook</span>
                    </a><a href="" class="social--google btn btn--size-s btn-with-icon">
                        <i class="social-icon fab fa-google" style="color: gray;"></i>
                        <span class="social-label">Google</span>

                    </a>
                </div>
            </div>
        </div>
    </div>

 
    <script src="Scripts/app.js"></script>
</body>
</html>
