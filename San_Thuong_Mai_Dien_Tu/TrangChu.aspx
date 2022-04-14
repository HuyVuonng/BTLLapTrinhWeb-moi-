<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="San_Thuong_Mai_Dien_Tu.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
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
    
        <div class="app" id="app">
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
                                            <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn"
                                                alt="" class="header_notify-img">
                                            <div class="header_notify-info">
                                                <span class="header_notify-name">Mỹ phẩm Ohui chính hãng </span>
                                                <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chính
                                                    hãng</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header_notify-item">
                                        <a href="#" class="header_notify-link">
                                            <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn"
                                                alt="" class="header_notify-img">
                                            <div class="header_notify-info">
                                                <span class="header_notify-name">Mỹ phẩm Ohui chính hãng</span>
                                                <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chính
                                                    hãng</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header_notify-item">
                                        <a href="#" class="header_notify-link">
                                            <img src="https://cf.shopee.vn/file/25fecab4d0c9dbfc7dc590df1e732026_tn"
                                                alt="" class="header_notify-img">
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


                         <%if (Session["TenKH"] == null)  %>
                    <% { %>
                    <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate"
                            id="register"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="dangky.html">Đăng ký</a></li>   /
                     <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DangNhapKH.aspx">Đăng nhập</a></li>
                    <% } else { %>
                        <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="#">Bán hàng</a></li>
                         <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="#"> <% =Session["TenKH"].ToString() %></a></li>
                   
                        <form id="form1" runat="server">
                            <li class="header__navbar-item header__navbar-item--strong" id="login">
                                <input type="submit" id="DangXuat" name="submit" class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" value="Đăng xuất"></input></li>
                        </form>
                         

                    <% } %>
                         
                        
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
                            <input type="text" class="header_search-input" id="search" placeholder="Nhập để tìm kiêm sản phẩm">

                        </div>

                        <button class="header_search-btn">
                            <i class="header_search-btn-icon fas fa-search"></i>
                        </button>                 
                    </div>
                    <!-- cart -->
                    <div class="header_cart">
                        <div class="header_cart-wrap">
                            <a href=""><i class="header_cart-icon fas fa-shopping-cart"></i>
                                <span class="header_cart-notice">3</span></a>

                            
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

        <!-- header for mobile -->
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
                                <span class="header_cart-notice">3</span>
                            </div>
                        </a>
                    </div>
                </div>

            </div>
        </header>






        <div class="app__container" id="app__container">
            <div class="grid">
                <div class="grid__row app__content">

                    <div class="grid__colum-10 l-12 c-12">

                     <div class="grid__row app__content">

                    <div class="grid__colum-10 l-12 c-12">
                        


                        <div class="slider">
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/20cc22afd0b5dfc359569ec36d40b616_xxhdpi" alt="">
                            </div>
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/6736f986bb7a278b2d0358b0b59c9acb_xxhdpi" alt="">
                            </div>
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/6eacae6ff35d10e76c63afb04bc59f3e_xxhdpi" alt="">
                            </div>
                        </div>

                        <div class="home-product">
                            <div class="grid__row">

                                 <%=HienProducts() %>


                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                        
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="grid">
                <div class="grid__row footer_item">
                    <div class="grid__colum-2-4 l-3">
                        <h3 class="footer-heading">Chăm sóc khánh hàng</h3>
                        <ul class="footer__list">
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Trung tâm trợ giúp</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Mail</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Hướng dẫn mua hằng</a>
                            </li>
                        </ul>
                    </div>
                    <div class="grid__colum-2-4 l-3">
                        <h3 class="footer-heading">Giới thiệu</h3>
                        <ul class="footer__list">
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Giới thiệu</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Tuyển dụng</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Điều khoẳn</a>
                            </li>
                        </ul>
                    </div>
                    <div class="grid__colum-2-4 l-3">
                        <h3 class="footer-heading">Theo dõi</h3>
                        <ul class="footer__list">
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">
                                    <i class="footer__list-item-icon fab fa-facebook"></i>
                                    Facebook
                                </a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">
                                    <i class="footer__list-item-icon fab fa-instagram"></i>
                                    Instagram
                                </a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">
                                    <i class="footer__list-item-icon fab fa-linkedin-in"></i>
                                    Linkedin
                                </a>
                            </li>
                        </ul>

                    </div>
                    <div class="grid__colum-2-4 l-3">
                        <h3 class="footer-heading">Danh mục</h3>
                        <ul class="footer__list">
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Trang điểm mặt</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Trang điểm môi</a>
                            </li>
                            <li class="footer__list-item">
                                <a href="" class="footer__list-item-link">Trang điểm mắt</a>
                            </li>
                        </ul>
                    </div>
                </div>


            </div>
            <div class="footer-bottom">
                <div class="grid">
                    <p class="footer-copyright">© 2021 - Bản quyền thuộc về Công ty HV</p>
                </div>
            </div>
        </footer>
    </div>


   

    <!-- modal-mobile -->
    <div class="modal-mobile" id="modal-mobile">
        <div class="modal-overlay" id="modal-overlay"></div>
        <div class="modal-body">
            <i class="close-icon fas fa-times" id="close-icon"></i>
            <ul class="nav_list_mobile">
                 <li class="nav_list_item"><a href="/TrangChu.aspx" class="nav_list_item_link">Trang chủ</a></li>
                 <li class="nav_list_item"><a href="/TrangChu.aspx?modul=QuanAo" class="nav_list_item_link">Quần áo</a></li>
                 <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoGiaDung" class="nav_list_item_link">Đồ gia dụng</a></li>
                 <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoDienTu" class="nav_list_item_link">Đồ điện tử</a></li>
                 <li class="nav_list_item"><a href="/TrangChu.aspx?modul=DoChoTre" class="nav_list_item_link">Đồ cho trẻ</a></li>
            </ul>
           


             <%--<asp:PlaceHolder ID="plChuaDNmobile" runat="server" Visible="true">
                            <div class="header__navbar-item header__navbar-item--strong header__navbar-item--separate"
                            id="register-mobile"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DangKyKH.aspx">Đăng ký</a></div>
                        <div class="header__navbar-item header__navbar-item--strong" id="login-mobile"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DangNhapKH.aspx">Đăng nhập</a></div>
                        </asp:PlaceHolder>

                        <asp:PlaceHolder ID="plDaDN_mobile" runat="server" Visible="false">
                            <div class="header__navbar-item header__navbar-item--strong" id="login">
                            <asp:LinkButton ID="lbtBanHangmobile" runat="server" OnClick="lbtBanHang_Click">Bán hàng</asp:LinkButton></div>
                                 <div class="header__navbar-item header__navbar-item--strong header__navbar-item--separate"
                            id="register-mobile">
                                     <asp:Literal ID="ltrTenKH_mobile" runat="server"></asp:Literal></div>
                        <div class="header__navbar-item header__navbar-item--strong" id="login-mobile">
                            <asp:LinkButton ID="lbtDangXuatmobile" runat="server" OnClick="lbtDangXuat_Click" CausesValidation="false">Đăng xuất</asp:LinkButton></div>
                        </asp:PlaceHolder>--%>
        </div>
    </div>





   <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

       <script src="Scripts/app.js"></script>

</body>
</html>
