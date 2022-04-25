using Cart.Data;
using Data.Center;
using Data.User;
using Shop.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;


namespace San_Thuong_Mai_Dien_Tu
{
    public class Global : System.Web.HttpApplication
    {
        public const string PRODUCT_LIST = "ProductList";
        public const string User_LIST = "UserList";
        public const string Shop_LIST = "ShopList";
        public const string Cart_LIST = "CartList";
        protected void Application_Start(object sender, EventArgs e)
        {
            

            ArrayList alProducts = new ArrayList();
            alProducts.Add(
                new ProductItem(01, "Áo da nam", 1200000m, "aodanam.jpg","Áo da",10,01,01));
            alProducts.Add(
                new ProductItem(02, "Áo khoác nam", 1400000m, "aokhoacnam.jpg","Áo khoác",5,01,01));
            alProducts.Add(
                new ProductItem(03, "Áo trẻ em", 240000m, "aotreem.jpg","Áo trẻ em", 5, 04, 01));
            alProducts.Add(
                new ProductItem(04, "Dao làm bếp", 4200000m, "daolambep.jpg", "Dao", 5, 02,02));
            alProducts.Add(
               new ProductItem(05, "Samsung galaxy s20", 20000000m, "SSS20.jpg", "Điện thoại", 5, 03, 03));
            alProducts.Add(
               new ProductItem(06, "Samsung galaxy s22 ultra", 30000000m, "s22ultra.jpg", "Điện thoại", 5, 03, 03));

            //...
            Application[PRODUCT_LIST] = alProducts;



            ArrayList alUser = new ArrayList();
            alUser.Add(
                new NguoiDung(01,"Vương Quang Huy","vuonghuy12345@gmail.com","123456","03214568798","Hà Nội"));
            
            //...
            Application[User_LIST] = alUser;



            ArrayList alShop = new ArrayList();
            alShop.Add(
                new ShopList(01,"HuyVuong","vuonghuy12345@gmail.com","03214568798","Hà Nội"));

            //...
            Application[Shop_LIST] = alShop;

            //

            ArrayList alCart = new ArrayList();
            
            Application[Cart_LIST] = alCart;
        }
      
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}