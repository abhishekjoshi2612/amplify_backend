class Shop_Models {
  final String id;
  final String shop_name;
  final String address;
  final String shop_preview_video;
  final List<Product_Item> product_items; //for left page

  Shop_Models({
    required this.id,
    required this.shop_name,
    required this.address,
    required this.shop_preview_video,
    required this.product_items,
  });
}

class Product_Item {
  final String name;
  final String product;
  final int price;

  Product_Item(
      {required this.name, required this.product, required this.price});
}
