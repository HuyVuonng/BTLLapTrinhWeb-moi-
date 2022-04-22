using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace San_Thuong_Mai_Dien_Tu
{
    public class Cart : Product
    {
        public int quantity { get; set; }
        public Cart(string id, string name, string price, string images, int quantity)
        {
            this.Id = id;
            this.Name = name;
            this.Price = price;
            this.Images = images;
            this.quantity = quantity;
        }
    }
}