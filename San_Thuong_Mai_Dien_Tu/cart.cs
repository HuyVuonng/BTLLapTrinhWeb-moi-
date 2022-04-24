using Data.Center;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace San_Thuong_Mai_Dien_Tu
{
    public class cart 

    {

        public cart(int id, string name, decimal price, string imageFile, int soluong)
        {
            this.MaSp = id;
            this.Ten = name;
            this.Gia = price;
            this.Anh = imageFile;
            this.SoLuong = soluong;
        }

        public int MaSp { get; set; }
        public string Ten { get; set; }
        public decimal Gia { get; set; }
        public string Anh { get; set; }
        public int SoLuong { get; set; }
    }
}