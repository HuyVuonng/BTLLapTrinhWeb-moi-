using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cart.Data
{
    public class CartItem
    {
        private int m_maHang;
        private string m_tenHang;
        private decimal m_giaban;
        private string m_anh;
        private int m_soluong;
        private int m_maKhmua;

        public CartItem(int maHang, string tenhang,decimal giaban,string anh, int soluong,int maKHmua)
        {
            this.MaHang = maHang;
            this.TenHang = tenhang;
            this.Giaban = giaban;
            this.Anh = anh;
            this.Soluong = soluong;
            this.MaKhmua = maKHmua;
        }

        public int MaHang { get => m_maHang; set => m_maHang = value; }
        public string TenHang { get => m_tenHang; set => m_tenHang = value; }
        public decimal Giaban { get => m_giaban; set => m_giaban = value; }
        public string Anh { get => m_anh; set => m_anh = value; }
        public int Soluong { get => m_soluong; set => m_soluong = value; }
        public int MaKhmua { get => m_maKhmua; set => m_maKhmua = value; }
    }
}