<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="San_Thuong_Mai_Dien_Tu.ThemSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Thêm sản phẩm vào Shop</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                                            <span class="header_notify-decription">Mô tả: Mỹ phẩm Ohui chínhhãng</span>
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
                        <a href="/TrangChu.aspx" class="header__navbar-item-link">Về trang chủ</a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="" class="header__navbar-item-link"><i
                                class="header_napa-icon far fa-question-circle"></i>Trợ giúp</a>
                    </li>
                     <li class="header__navbar-item">
                         <span><%=Session["TenShop"] %></span>
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
                    <a href="#app" class="header_logo-link">
                        <img src="img/logo3.png" alt="">
                        <span class="title">Shopping Vui</span>
                    </a>
                </div>
            </div>

        </div>
    </header>

        <div class="app__container" id="app__container">
            <div class="grid">
                <div class="grid__row app__content">
                    <div class="grid__colum-10 l-12 c-12">

                            <form id="form1" method="post" enctype="multipart/form-data" style="position: relative;top: 50%;" onsubmit="return valid();" runat="server">
                      <table class="tblThemSP">
    <tbody>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Loại hàng</td>
           <td class="tblThemSP_CotNhap">
               <select id="drlLoaiHang" name="drlLoaiHang">
                   <option value="1">Quần áo</option>
                   <option value="2">Đồ gia dụng</option>
                   <option value="3">Đồ điện tử</option>
                   <option value="4">Đồ trẻ em</option>
               </select>

           </td>
        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Tên sản phẩm</td>
            <td class="tblThemSP_CotNhap">
                <input type="text" id="txtTenSp" name="txtTenSp" required/>
            </td>
        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Ảnh sản phẩm</td>
            <td class="tblThemSP_CotNhap">
                <input type="file" id="fulAnh" name="fulAnh" required/></td>
        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Mô tả</td>
            <td class="tblThemSP_CotNhap">
                <input type="text" id="txtMota" name="txtMota" required/></td>

        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Giá</td>
            <td class="tblThemSP_CotNhap">
                <input type="text" id="txtGia" name="txtGia" required/>
          </td>

        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe">Số lượng</td>
            <td class="tblThemSP_CotNhap">
                  <input type="text" id="txtSoLuong" name="txtSoLuong" required/>
            </td>
        </tr>
        <tr class="tblThemSP_hang">
            <td class="tblThemSP_cotTieuDe"></td>
            <td class="tblThemSP_CotNhap_btn">
                <a class="btn" href="QuanLyShop.aspx">Trở lại"</a>
                <input type="submit" id="btnThem" name="submit" class="btn btn-primary" value="Thêm"/>
        </tr>
    </tbody>
</table>
                 </form>
              

                               
                                 
                           

                    </div>
                </div>
            </div>
        </div>

</body>
</html>
