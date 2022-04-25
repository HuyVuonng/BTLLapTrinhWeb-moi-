<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="San_Thuong_Mai_Dien_Tu.GioHang" %>

<!DOCTYPE html>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    
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
     <link rel ="stylesheet"href="Style/giohang.css" />
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
                                
                            </div>
                        </li>
                        <li class="header__navbar-item">
                            <a href="" class="header__navbar-item-link"><i
                                    class="header_napa-icon far fa-question-circle"></i>Trợ giúp</a>
                        </li>


                         <%if (Session["TenKH"] == null)  %>
                    <% { %>
                    <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate"
                            id="register"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DangKyKH.aspx">Đăng ký</a></li>
                     <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DangNhapKH.aspx">Đăng nhập</a></li>
                    <% } else { %>
                            <%if (Session["Shop"] == null) %>
                            <%{ %>
                        <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a" href="DKBanHang.aspx">Bán hàng</a></li>
                            <%}
                                else
                                { %>
                        <li class="header__navbar-item header__navbar-item--strong" id="login"><a class="header__navbar-item header__navbar-item--strong header__navbar-item--separate-a"href="QuanLyShop.aspx?maShop=<%=Session["MaShop"]%>">Bán hàng</a></li>
                                <%} %>
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

                    <form  style="width: 70%;" method="get" action="TimKiem.aspx">
                        <div class="header_search">
                        <div class="header_search-input-wrap">
                            <input type="text" name="search" class="header_search-input" id="search" placeholder="Nhập để tìm kiêm sản phẩm">

                        </div>

                        <button type="submit" name="submit" class="header_search-btn">
                            <i class="header_search-btn-icon fas fa-search"></i>
                        </button> 
                            <%--<input  type="submit" name="submit" class="header_search-btn" value="Tìm"/>--%>
                    </div>
                    </form>
                    <!-- cart -->
                    <div class="header_cart">
                        <div class="header_cart-wrap">
                            <a href="GioHang.aspx"><i class="header_cart-icon fas fa-shopping-cart"></i>
                                <span class="header_cart-notice">3</span></a>

                            
                        </div>
                        </div>
                    </div>
                </div> 

            
                        </header>
              


	<div class="main">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Tác vụ</th>
						</tr>
                    <%=HienCart() %>
						

			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Đơn hàng<br></h2>
                    <div class="cart__products-total-price">
                        <p>Tổng tiền sản phẩm</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!--<div class="cart__delivery-price">
                        <p>Tổng phí giao hàng</p>
                        <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <hr>--->
                    <div class="cart__order-total">
                        <p>Tổng cộng: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!-----<hr>--->
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Thanh toán</button>
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

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

       <script src="Scripts/app.js"></script>
    
</html>


