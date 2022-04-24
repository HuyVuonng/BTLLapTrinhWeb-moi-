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
    public partial class SuaSP : System.Web.UI.Page
    {
        public int ma;
        public string anhcu = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ma = Convert.ToInt32(Request.QueryString["maSp"]);
            ArrayList Product = Application[Global.PRODUCT_LIST] as ArrayList;


            for (int i = 0; i < Product.Count; i++)
            {
                Data.Center.ProductItem item = Product[i] as Data.Center.ProductItem;
                if (item.MaSp == ma)
                {
                    anhcu = item.Anh.ToString();
                }
            }
                    btnSua_click();
        }

        private void btnSua_click()
        {
            if (Request.Form["submit"] == "Sửa")
            {
                var loaihang = Convert.ToInt32(Request.Form["drlLoaiHang"]);
                var tenSp = Request.Form["txtTenSp"];
                HttpPostedFile anh = Request.Files["fulAnh"];
                var mota = Request.Form["txtMota"];
                var gia = Convert.ToDecimal(Request.Form["txtGia"]);
                var soluong = Convert.ToInt32(Request.Form["txtSoLuong"]);
                ma = Convert.ToInt32(Request.QueryString["maSp"]);
                string anhsp = "";
                

                if (anh.FileName=="") {
                    anhsp = anhcu;
                }
                else
                {
                    anh.SaveAs(Server.MapPath("/img/" + anh.FileName));
                    anhsp = anh.FileName;
                }

                ArrayList Product= Application[Global.PRODUCT_LIST] as ArrayList;



                for (int i = 0; i < Product.Count; i++)
                {
                    Data.Center.ProductItem item = Product[i] as Data.Center.ProductItem;
                    if (item.MaSp == ma)
                    {
                        
                        item.MaLh = loaihang;
                        item.Ten = tenSp;
                        item.MoTa = mota;
                        item.Gia = gia;
                        item.SoLuong = soluong;
                        item.Anh = anhsp;
                    }
                }

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sửa sản phẩm thành công!')", true);

            }
        }

        public string HienSPSua()
        {
            ArrayList alProduct
                = Application[Global.PRODUCT_LIST] as ArrayList;
            StringBuilder sb = new StringBuilder();
            ma = Convert.ToInt32(Request.QueryString["maSp"]);
            for (int i = 0; i < alProduct.Count; i++)
            {
                Data.Center.ProductItem item = alProduct[i] as Data.Center.ProductItem;
                if(item.MaSp== ma)
                {
                    
                    string tien = Convert.ToDouble(item.Gia).ToString("N0");//Them dau phan cach hang nghin
                    sb.AppendFormat("<table class='tblThemSP'><tbody>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Loại hàng</td>" +
                        "<td class='tblThemSP_CotNhap'>" +
                        "<select id = 'drlLoaiHang' name='drlLoaiHang'>" +
                        "<option value = '1' > Quần áo</option>" +
                        "<option value = '2' > Đồ gia dụng</option>" +
                        "<option value = '3' > Đồ điện tử</option>" +
                        "<option value = '4' > Đồ trẻ em</option>" +
                        "</select>" +
                        "</td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Tên sản phẩm</td>" +
                        "<td class='tblThemSP_CotNhap'><input type = 'text' id='txtTenSp' name='txtTenSp' value='{0}' required/>" +
                        "</td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Ảnh sản phẩm</td>" +
                        "<td class='tblThemSP_CotNhap'>" +
                        "<input type = 'file' id='fulAnh' name='fulAnh' value='{1}'/></td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Mô tả</td>" +
                        "<td class='tblThemSP_CotNhap'>" +
                        "<input type = 'text' id='txtMota' name='txtMota' value='{2}' required/></td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Giá</td>" +
                        "<td class='tblThemSP_CotNhap'>" +
                        "<input type = 'text' id='txtGia' name='txtGia' value='{3}' required/>" +
                        "</td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'>Số lượng</td>" +
                        "<td class='tblThemSP_CotNhap'>" +
                        "<input type = 'text' id='txtSoLuong' name='txtSoLuong' value='{4}' required/>" +
                        "</td>" +
                        "</tr>" +
                        "<tr class='tblThemSP_hang'>" +
                        "<td class='tblThemSP_cotTieuDe'></td>" +
                        "<td class='tblThemSP_CotNhap_btn'>" +
                        "<a class='btn' href='QuanLyShop.aspx'>Trở lại'</a>" +
                        "<input type = 'submit' id='btnThem' name='submit' class='btn btn-primary' value='Sửa'/>" +
                        "</tr>" +
                        "</tbody></table>",item.Ten, item.Anh,item.MoTa, tien, item.SoLuong);
                }
               
            }
            return sb.ToString();
        }
    }
}