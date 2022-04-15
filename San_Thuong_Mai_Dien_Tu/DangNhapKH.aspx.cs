using Data.User;
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
    public partial class DangNhapKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Shop"] = null;
            Session["MaShop"] = null;
            Session["TenShop"] = null;
            Session["MaKh"] = null;
            Session["TenKH"] = null;
            Session["SDT"] = null;
            Session["sDiaChi"] = null;
            Session["Email"] = null;
            Session["Mk"] = null;
            btnDangNhap_click();
        }

        private void btnDangNhap_click()
        {
           if(Request.Form["submit"]== "ĐĂNG NHẬP")
            {
                var Email = Request.Form["Email"];
                var MK = Request.Form["MK"];
                int KHco=0;
                int KHkhong=0;
                ArrayList nguoidung
                    = Application[Global.User_LIST] as ArrayList;
                for (int i = 0; i < nguoidung.Count; i++)
                {
                    NguoiDung item = nguoidung[i] as NguoiDung;
                    if (item.U_MatKhau == MK && item.U_TaiKhoan == Email)
                    {
                        KHco = 1;
                        Session["TenKH"] = item.U_HoTen;
                        Session["SDT"] = item.U_SDT;
                        Session["sDiaChi"] = item.U_DiaChi;
                        Session["Email"] = item.U_TaiKhoan;
                        Session["Mk"] = item.U_MatKhau;
                    }
                    else
                    {
                        KHkhong =KHkhong + 1;
                    }

                }
                if (KHco == 1)
                {
                    

                    ArrayList shopBan
                   = Application[Global.Shop_LIST] as ArrayList;

                    for(int i = 0; i < shopBan.Count; i++)
                    {
                        ShopList item = shopBan[i] as ShopList;
                        if(item.S_TaiKhoan == Email)
                        {
                            Session["Shop"] = 1;
                            Session["MaShop"] = item.S_MaShop;
                            Session["TenShop"] = item.S_TenShop;
                        }
                    }

                    Response.Redirect("/TrangChu.aspx");

                }
                else if (KHkhong>0 && KHco==0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tên đăng nhập hoặc mật khẩu sai!')", true);

                }
            }

        }
    }
}