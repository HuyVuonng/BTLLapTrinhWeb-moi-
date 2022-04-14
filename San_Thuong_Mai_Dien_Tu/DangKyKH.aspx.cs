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
                string Ten = Request.Form["Ten"].ToString();
                string sdt = Request.Form["SDT"].ToString();
                string DiaChi = Request.Form["DiaChi"].ToString();
                string Email = Request.Form["Email"].ToString();
                string MK = Request.Form["MK"].ToString();
                ArrayList nguoidung
                = Application[Global.User_LIST] as ArrayList;

                int maKH = nguoidung.Count + 1;
                
                    ArrayList alUser = new ArrayList();
                alUser.Add(
                    new NguoiDung(maKH,Ten, Email, MK,sdt,DiaChi));
                Application[Global.User_LIST] = alUser;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng ký thành công!')", true);
            }
        }
    }
}