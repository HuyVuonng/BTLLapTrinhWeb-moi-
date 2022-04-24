using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using Data.Center;

namespace San_Thuong_Mai_Dien_Tu
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                int soluot = Convert.ToInt32(Application["sogiohang"]);
                if (Request.Cookies["cart"] != null)
                {
                    ArrayList alProduct
     = Application[Global.PRODUCT_LIST] as ArrayList;

                    ArrayList cartList = new ArrayList();
                    string[] productsID = Request.Cookies["cart"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (ProductItem product in alProduct)
                        {
                            if (product.Id == productID)
                            {
                                soluot++;
                                cartList.Add(product);

                            }
                        }
                        //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
                    }
                    ListViewCart.DataSource = cartList;
                    ListViewCart.DataBind();

                    //Display products price toan bo san pham
                    int productsPrice = 0;
                    foreach (ProductItem product in cartList) productsPrice += Int32.Parse(product.Price);
                    products_price.InnerHtml = $"{productsPrice} <span class='cart__product-price-unit'>đ</span>";

                    //Display delivery price phi ship
                    /**const int DELIVERY = 25000;
                    delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";**/

                    //Display order total price
                    int orderTotal = productsPrice;
                    order_total_price.InnerHtml = $"{orderTotal} <span class='cart__product-price-unit'>đ</span>";
                }
                else
                {
                    Response.Redirect("TrangChu.aspx");
                }
            }
            else
            {
                Response.Redirect("DangKyKH.aspx");
            }
        }
       

    }
        }
    