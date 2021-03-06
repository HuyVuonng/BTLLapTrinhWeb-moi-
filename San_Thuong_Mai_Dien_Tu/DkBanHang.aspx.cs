using Shop.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class DkBanHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnDangKy_click();
        }
        private void btnDangKy_click()
        {
            if (Request.Form["submit"] == "Đăng ký")
            {
                string Ten = Request.Form["Ten"].ToString();
                string sdt = Request.Form["SDT"].ToString();
                string DiaChi = Request.Form["DiaChi"].ToString();
               
                ArrayList shopBan
                = Application[Global.Shop_LIST] as ArrayList;

                int maShop = shopBan.Count + 1;

                ArrayList alShop = new ArrayList();
                for(int i = 0; i < shopBan.Count; i++)
                {
                    ShopList item = shopBan[i] as ShopList;
                    alShop.Add(
                    new ShopList(item.S_MaShop, item.S_TenShop, item.S_TaiKhoan, item.S_SDT, item.S_DiaChi));
                }
                alShop.Add(
                    new ShopList(maShop,Ten, Session["Email"].ToString(),sdt,DiaChi));
                Application[Global.Shop_LIST] = alShop;
                Session["Shop"] = 1;
                Session["MaShop"] = maShop;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng ký thành công!')", true);
            }
        }
    }
}