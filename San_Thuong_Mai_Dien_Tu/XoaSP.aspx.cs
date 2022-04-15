using Data.Center;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class XoaSP : System.Web.UI.Page
    {
        public int vitri;
        protected void Page_Load(object sender, EventArgs e)
        {
            int maSp = Convert.ToInt32(Request.QueryString["maSp"]);
            ArrayList Product = Application[Global.PRODUCT_LIST] as ArrayList;
            
            ArrayList alProducts = new ArrayList();
            for (int i = 0; i < Product.Count; i++)
            {
                ProductItem item = Product[i] as ProductItem;
                if (item.MaSp == maSp)
                {
                    vitri = i;
                }
            }
            for (int i = 0; i < vitri; i++)
            {
                ProductItem item = Product[i] as ProductItem;
                alProducts.Add(
                new ProductItem(item.MaSp, item.Ten, item.Gia, item.Anh, item.MoTa, item.SoLuong, item.MaLh, item.MaNoiBan));
            }
            for (int i = vitri+1 ; i < Product.Count ; i++)
            {
                ProductItem item = Product[i] as ProductItem;
                alProducts.Add(
                new ProductItem(item.MaSp, item.Ten, item.Gia, item.Anh, item.MoTa, item.SoLuong, item.MaLh, item.MaNoiBan));
            }
            Application[Global.PRODUCT_LIST] = alProducts;
            Response.Redirect("/QuanLyShop.aspx");


            
        }
    }
}