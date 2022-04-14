using System;
using System.Collections.Generic;
using System.Web;

namespace Data.Center
{
    public class ProductItem
    {
        //Fields
        private string m_Ten;
        private string m_MaSp;
        private decimal m_Gia;
        private string m_Anh;
        private string m_MoTa;
        private int m_SoLuong;
        private int m_MaLh;
        private int m_MaNoiBan;

        //Properties


        public ProductItem(string id, string name, decimal price, string imageFile,string mota,int soluong, int malh,int manoiban)
        {
            this.m_MaSp = id;
            this.m_Ten = name;
            this.m_Gia = price;
            this.m_Anh = imageFile;
            this.MoTa = mota;
            this.SoLuong = soluong;
            this.MaLh = malh;
            this.MaNoiBan = manoiban;
        }

        public string Ten
        {
            get { return m_Ten; }
            set { m_Ten = value; }
        }

        public string MaSp
        {
            get { return m_MaSp; }
            set { m_MaSp = value; }
        }
        public decimal Gia
        {
            get { return m_Gia; }
            set { m_Gia = value; }
        }
        public string Anh
        {
            get { return m_Anh; }
            set { m_Anh = value; }
        }
        
        public string MoTa {
            get { return m_MoTa; }
            set { m_MoTa = value; }
        }
        public int SoLuong {
            get { return m_SoLuong; }
            set { m_SoLuong = value; }
        }
        public int MaLh {
            get { return m_MaLh; }
            set { m_MaLh = value; }
        }
        public int MaNoiBan {
            get { return m_MaNoiBan; }
            set { m_MaNoiBan = value; }
        }
    }
}