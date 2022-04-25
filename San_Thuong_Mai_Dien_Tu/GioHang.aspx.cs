using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text;
using Cart.Data;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        public string HienCart()
        {
            ArrayList alProduct
                = Application[Global.PRODUCT_LIST] as ArrayList;
            ArrayList alShop
                = Application[Global.Shop_LIST] as ArrayList;
            ArrayList alCart
                   = Application[Global.Cart_LIST] as ArrayList;
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i < alCart.Count; i++)
            {
                CartItem item = alCart[i] as CartItem;
                if(item.MaKhmua== int.Parse(Session["MaKh"].ToString()))
                {
                    string tien = Convert.ToDouble(item.Giaban).ToString("N0");//Them dau phan cach hang nghin
                    sb.AppendFormat("<tr>" +
                        "<td> <img class='anhSp' src='img/{0}'> </td>" +
                        "<td> {1}</td>" +
                        "<td> {2}đ </td>" +
                        "<td> Tác vụ </td>" +
                        "</tr> ",item.Anh,item.TenHang,tien);
                }
                
            }
            return sb.ToString();
        }
    }
 }
