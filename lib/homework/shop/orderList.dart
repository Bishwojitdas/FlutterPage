
import 'package:flutter/cupertino.dart';

List<Order> orderList=[
Order("Nike Air Max 20", "240 Usd", "https://media.kohlsimg.com/is/image"
    "/kohls/3713309?wid=600&hei=600&op_sharpen=1",
    "30%"),
  Order("Excee Sneakers", "160 Usd", "https://images.unsplash.c"
      "om/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8"
      "MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60", "35%"),
  Order("Excee Sneakers", "160 Usd", "https://media.kohlsimg.com/is/i"
      "mage/kohls/4426354?wid=600&hei=600&op_sharpen=1", "35%"),
  Order("Excee Sneakers", "160 Usd", "https://m.media-amazon.com/images/I/61687-dV33L._UY500_.jpg", "35%"),
  Order("Nike Air Max 20", "240 Usd", "https://images.stockx.com/images/Nike-Air-Max-200-Rasta.jpg?fit=fil"
      "l&bg=FFFFFF&w=1200&h=857&fm=webp&auto=compress&dpr=2&trim=color&updated_at=1607056700&q=75",
      "30%"),
  Order("Excee Sneakers", "160 Usd", "https://media.kohlsimg.com/is/i"
      "mage/kohls/4426354?wid=600&hei=600&op_sharpen=1", "35%"),
  Order("Nike Air Max 20", "240 Usd", "https://www.tradeinn.com/f"
      "/13736/137367689/nike-air-max-motion-2-melted-crayon-gs-trainers.jpg",
      "30%"),
  Order("Excee Sneakers", "160 Usd", "https://media.kohlsimg.com/is/i"
      "mage/kohls/4426354?wid=600&hei=600&op_sharpen=1", "35%"),
  Order("Nike Air Max 20", "240 Usd", "https://images.unsplash.c"
      "om/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8"
      "MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
      "30%"),
  Order("Excee Sneakers", "160 Usd", "https://media.kohlsimg.com/is/i"
      "mage/kohls/4426354?wid=600&hei=600&op_sharpen=1", "35%"),
  Order("Nike Air Max 20", "240 Usd", "https://images.unsplash.c"
      "om/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8"
      "MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
      "30%"),
];

class Order{
  String name="";
  String price="";
  String images="";
  String discount="";
  

  Order(this.name, this.price, this.images, this.discount);
}