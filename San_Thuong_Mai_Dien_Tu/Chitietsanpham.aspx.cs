using Data.Center;
using Shop.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class Chitietsanpham : System.Web.UI.Page
    {
        public string maSP = "";
        public int maShop;
        public string tenShop="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                maSP = Request.QueryString["maSp"];
            }
        }

        public string HienDetailProducts()
        {
            ArrayList alProduct
                = Application[Global.PRODUCT_LIST] as ArrayList;
            ArrayList alShop
                = Application[Global.Shop_LIST] as ArrayList;
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < alProduct.Count; i++)
            {
                ProductItem item = alProduct[i] as ProductItem;

                if (item.MaSp == Convert.ToInt32(maSP))
                {
                    maShop = item.MaNoiBan;
                }

            }

            for (int j=0;j< alShop.Count; j++)
            {
                ShopList itemShop = alShop[j] as ShopList;
                if (itemShop.S_MaShop == maShop)
                {
                    tenShop = itemShop.S_TenShop;
                }
            }


            for (int i = 0; i < alProduct.Count; i++)
            {
                ProductItem item = alProduct[i] as ProductItem;
                
                if (item.MaSp== Convert.ToInt32(maSP))
                {
                    string tien = Convert.ToDouble(item.Gia).ToString("N0");//Them dau phan cach hang nghin
                    sb.AppendFormat("<div class='l-6 m-12 c-12'>" +
                        "<div class='home-product-item__img'style='background-image: url(/img/{0});'></div>" +
                        "</div>" +
                        "<div class='l-6 m-12 c-12 detail'>" +
                        "<span class='Product_name'>{1}</span>" +
                        "<div class='gia'>" +
                        "<span class='giatitle'>Giá của sản phẩm: </span>" +
                        "<span class='giaSp'>{2}đ</span></div>" +
                        "<div class='Mota'>" +
                        "<span class='MoTatitle'>Mô tả: </span>" +
                        "<span class='motatxt'>{3}</span>" +
                        "</div>" +
                        "<div class='shopname_box'>" +
                        "<span class='shopname_title'> Shop bán: </span>" +
                        "<span class='shopname'> {5}</span>" +
                        "</div>" +
                        "<div class='soLuong'>" +
                        "<span class='soluong_title'>Số lượng:</span>" +
                        "<div class='dautru' id='dautru' onclick='BotSLSP()'><i class='fa-solid fa-minus'></i></div>" +
                        "<input type = 'text' class='soluongmua' value='1' id='soluongmua' onchange='chekSLban()'>" +
                        "<div class='daucong' id='daucong' onclick='themSLSP()'><i class='fa-solid fa-plus'></i></i></div>  " +
                        "</div>" +
                        "<div class='soHangcon'>" +
                        "<span class='soluongcon_title'>Lượng sản phẩm còn: </span>" +
                        "<span class='soluongcon_value' id='soluongcon'>{4}</span>" +
                        "</div>" +
                        "<input type = 'button' value='Thêm vào giỏ hàng' class='btn btn-primary btn_ThemVaoGioHang'>" +
                        "</div>",item.Anh, item.Ten, tien, item.MoTa,item.SoLuong,tenShop);
                }
                
            }
            return sb.ToString();
        }
    }
}