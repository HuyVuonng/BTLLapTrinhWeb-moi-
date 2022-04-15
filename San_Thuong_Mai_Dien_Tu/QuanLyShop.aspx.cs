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
    public partial class QuanLyShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string HienSPCuaShop()
        {
            ArrayList alProduct
                = Application[Global.PRODUCT_LIST] as ArrayList;
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < alProduct.Count; i++)
            {
                ProductItem item = alProduct[i] as ProductItem;
                int maShop = Convert.ToInt32(Session["MaShop"]);
                if(item.MaNoiBan == maShop)
                {
                    string tien = Convert.ToDouble(item.Gia).ToString("N0");//Them dau phan cach hang nghin
                    sb.AppendFormat("<tr class='hangtbl'>" +
                        "<td class='cotThanhPhan cotTenhang'>{0}</td>" +
                        "<td class='cotThanhPhan cotAnhBia'><img class='anhSp' src='img/{1}'></td>" +
                        "<td class='cotThanhPhan cotMota'>{2}</td>" +
                        "<td class='cotThanhPhan cotSoLuong'>{3}</td>" +
                        "<td class='cotThanhPhan cotGiaban'>{4}</td>" +
                        "<td class='cotTieuDe cotTacvu'>" +
                        "<a href = '/SuaSP.aspx?maSp={5}' class='btntacvu SuaBTN' >Sửa</a>" +
                        "<a onclick = 'return Conform_Delete()' href = '/XoaSP.aspx?maSp={5}' class='btntacvu Xoa'  >Xóa</a>" +
                        "</td>" +
                        "</tr>",item.Ten,item.Anh,item.MoTa,item.SoLuong,tien,item.MaSp);
                }
                
            }
            return sb.ToString();
        }
    }
}