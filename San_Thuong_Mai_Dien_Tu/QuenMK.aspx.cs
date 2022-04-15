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
    public partial class QuenMK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnQuenMK_click();
        }

        private void btnQuenMK_click()
        {
            if (Request.Form["submit"] == "Xác nhận")
            {
                int tontai = 0;
                int khongtontai = 0;
                string Email = Request.Form["Email"].ToString();
                string MK = Request.Form["MK"].ToString();
                ArrayList nguoidung
                = Application[Global.User_LIST] as ArrayList;
                for(int i = 0; i < nguoidung.Count; i++)
                {
                    NguoiDung item = nguoidung[i] as NguoiDung;
                    if (item.U_TaiKhoan == Email)
                    {
                        tontai = 1;
                        item.U_MatKhau = MK;
                    }
                    else
                    {
                        khongtontai += 1;
                    }
                }
                if (tontai==1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đổi mật khẩu thành công!')", true);
                }
                if (tontai == 0 && khongtontai>=1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Không có tài khoản này')", true);

                }



            }
        }
    }
}