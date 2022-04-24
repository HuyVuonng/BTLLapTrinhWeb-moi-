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
    public partial class ThemSP : System.Web.UI.Page
    {
       public int maShop;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnThem_Click();
        }

        private void btnThem_Click()
        {
            if (Request.Form["submit"] == "Thêm")
            {
                var loaihang = Convert.ToInt32(Request.Form["drlLoaiHang"]) ;
                var tenSp = Request.Form["txtTenSp"];
                HttpPostedFile anh = Request.Files["fulAnh"];
                var mota = Request.Form["txtMota"];
                var gia =Convert.ToDecimal( Request.Form["txtGia"]);
                var soluong = Convert.ToInt32(Request.Form["txtSoLuong"]);
                maShop = Convert.ToInt32(Request.QueryString["maShop"]) ;
                if (anh == null) { }
                else
                {
                    anh.SaveAs(Server.MapPath("/img/" + anh.FileName));
                }
                ArrayList Product
               = Application[Global.PRODUCT_LIST] as ArrayList;
                int maSP = Product.Count + 1;

                ArrayList alProducts = new ArrayList();

                for (int i = 0; i < Product.Count; i++)
                {
                    Data.Center.ProductItem item = Product[i] as Data.Center.ProductItem;
                    alProducts.Add(
                    new Data.Center.ProductItem(item.MaSp, item.Ten, item.Gia, item.Anh, item.MoTa, item.SoLuong, item.MaLh, item.MaNoiBan));
                }
                alProducts.Add(
                   new Data.Center.ProductItem(maSP, tenSp, gia, anh.FileName, mota, soluong, loaihang, maShop));
                Application[Global.PRODUCT_LIST] = alProducts;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thêm sản phẩm thành công!')", true);
            }
        }
    }
}