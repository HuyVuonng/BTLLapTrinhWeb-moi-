using Data.Center;
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
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnDangXuat_click();
        }

        private void btnDangXuat_click()
        {
            if(Request.Form["submit"]=="Đăng xuất")
            {
                Session["KhachHang"] = null;
                Session["MaKh"] = null;
                Session["TenKH"] = null;
                Session["SDT"] = null;
                Session["sDiaChi"] = null;
                Session["Email"] = null;
                Session["Mk"] = null;
                Response.Redirect("/TrangChu.aspx");
            }
        }

        public string HienProducts()
        {
            ArrayList alProduct
                = Application[Global.PRODUCT_LIST] as ArrayList;
            StringBuilder sb = new StringBuilder();
            
            for (int i = 0; i < alProduct.Count; i++)
            {
                ProductItem item = alProduct[i] as ProductItem;
                string tien = Convert.ToDouble(item.Gia).ToString("N0");//Them dau phan cach hang nghin
                sb.AppendFormat("<div class='grid__colum-2-4 l-2-4 m-4 c-12'>" +
                    "<a class='home-product-item' href='#'>" +
                    "<div class='home-product-item__img'style='background-image: url(/img/{1});'></div>" +
                    "<h4 class='home-product-item__name'> {0}</h4><div class='home-product-item-price'>" +
                    "<span class='home-product-item-price-new'>{2}đ</span></div><div class='home-product-item-action'>" +
                    "<span class='home-product-item_like home-product-item_like--liked'><i class='home-product-item_like-icon-emty far fa-heart'></i>" +
                    "<i class='home-product-item_like-icon-fill fas fa-heart'></i></span>" +
                    "<div class='home-product-item_rating'>" +
                    "<i class='home-product-item_gold fas fa-star'></i><i class='home-product-item_gold fas fa-star'></i>" +
                    "<i class='home-product-item_gold fas fa-star'></i>" +
                    "<i class='home-product-item_gold fas fa-star'></i><i class='fas fa-star'></i></div>" +
                    "<span class='home-product-item_sold'>100 đã bán</span></div><div class='home-product-item_favorite'>" +
                    "<i class='fas fa-check'></i><span>Yêu thích</span> </div></a></div>",item.Ten,item.Anh,tien);
            }
            return sb.ToString();
        }
    }
}