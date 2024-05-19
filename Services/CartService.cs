using ECommerceApp.Models;
using System.Collections.Generic;

namespace ECommerceApp.Services
{
    public class CartService
    {
        private readonly List<CartItem> _cartItems;

        public CartService()
        {
            _cartItems = new List<CartItem>();
        }

        public void AddToCart(Product product)
        {
            var cartItem = _cartItems.Find(ci => ci.ProductId == product.Id);
            if (cartItem != null)
            {
                cartItem.Quantity++;
            }
            else
            {
                _cartItems.Add(new CartItem { ProductId = product.Id, ProductName = product.Name, Price = product.Price, Quantity = 1 });
            }
        }

        public void RemoveFromCart(int productId)
        {
            var cartItem = _cartItems.Find(ci => ci.ProductId == productId);
            if (cartItem != null)
            {
                _cartItems.Remove(cartItem);
            }
        }

        public List<CartItem> GetCartItems()
        {
            return _cartItems;
        }
    }
}
