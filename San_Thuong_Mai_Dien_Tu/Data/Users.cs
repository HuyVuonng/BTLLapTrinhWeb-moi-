using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Data.User
{
    public class NguoiDung
    {
        private int u_maKH;
        private string u_HoTen;
        private string u_TaiKhoan;
        private string u_MatKhau;
        private string u_SDT;
        private string u_DiaChi;


        public NguoiDung(int makh, string HoTen, string TaiKhoan, string MatKhau, string SDT, string DiaChi)
        {
            this.u_maKH = makh;
            this.u_HoTen = HoTen;
            this.u_TaiKhoan = TaiKhoan;
            this.u_MatKhau = MatKhau;
            this.u_SDT = SDT;
            this.u_DiaChi = DiaChi;
        }

        public int U_maKH {
            get { return u_maKH; }
            set { u_maKH = value; }
        }
        public string U_HoTen {
            get { return u_HoTen; }
            set { u_HoTen = value; }
        }
        public string U_TaiKhoan {
            get { return u_TaiKhoan; }
            set { u_TaiKhoan = value; }
        }
        public string U_MatKhau {
            get { return u_MatKhau; }
            set { u_MatKhau = value; }
        }
        public string U_SDT {
            get { return u_SDT; }
            set { u_SDT = value; }
        }
        public string U_DiaChi {
            get { return u_DiaChi; }
            set { u_DiaChi = value; }
        }
    }
}