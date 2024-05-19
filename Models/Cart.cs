using System.Collections.Generic;
namespace ECommerceApp.Models
{
  

    public class Cart
    {
        public List<CartItem> Items { get; set; } = new List<CartItem>();
    }

}
