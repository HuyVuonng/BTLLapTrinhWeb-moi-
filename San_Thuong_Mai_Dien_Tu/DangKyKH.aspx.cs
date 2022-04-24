using Data.User;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class DangKyKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnDangKy_click();
        }

        private void btnDangKy_click()
        {
            if(Request.Form["submit"]== "Đăng ký")
            {
                int tontai=0;
                int khongtontai = 0;
                string Ten = Request.Form["Ten"].ToString();
                string sdt = Request.Form["SDT"].ToString();
                string DiaChi = Request.Form["DiaChi"].ToString();
                string Email = Request.Form["Email"].ToString();
                string MK = Request.Form["MK"].ToString();
                ArrayList nguoidung
                = Application[Global.User_LIST] as ArrayList;
                for (int i = 0; i < nguoidung.Count; i++)
                {
                    NguoiDung item = nguoidung[i] as NguoiDung;
                    if(item.U_TaiKhoan == Email)
                    {
                        tontai = 1;
                    }
                    else
                    {
                        khongtontai += 1;
                    }

                }
                if (khongtontai >= 1 && tontai==0)
                {

                    int maKH = nguoidung.Count + 1;

                    ArrayList alUser = new ArrayList();
                    //for (int i = 0; i < nguoidung.Count; i++)
                    //{
                    //    NguoiDung item = nguoidung[i] as NguoiDung;
                    //    _ = alUser.Add(
                    //   new NguoiDung(item.U_maKH,item.U_HoTen ,item.U_TaiKhoan, item.U_MatKhau, item.U_SDT, item.U_DiaChi));
                    //}
                    nguoidung.Add(
                       new NguoiDung(maKH, Ten, Email, MK, sdt, DiaChi));
                    //Application[Global.User_LIST] = alUser;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng ký thành công!')", true);
                }
                if (tontai == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đã tồn tại tài khoản này!')", true);

                }

            }
        }
    }
}