using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.Data
{
    public class ShopList
    {
        private int s_MaShop;
        private string s_TenShop;
        private string s_TaiKhoan;
        private string s_DiaChi;
        private string s_SDT;

        public ShopList(int ma, string ten, string TaiKhoan,  string SDT, string DiaChi)
        {
            this.S_MaShop = ma;
            this.S_TenShop = ten;
            this.S_TaiKhoan = TaiKhoan;
            this.S_SDT = SDT;
            this.S_DiaChi = DiaChi;
        }

        public int S_MaShop { get => s_MaShop; set => s_MaShop = value; }
        public string S_TenShop { get => s_TenShop; set => s_TenShop = value; }
        public string S_TaiKhoan { get => s_TaiKhoan; set => s_TaiKhoan = value; }
        public string S_DiaChi { get => s_DiaChi; set => s_DiaChi = value; }
        public string S_SDT { get => s_SDT; set => s_SDT = value; }
    }
    
}