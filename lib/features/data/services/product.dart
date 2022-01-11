import 'dart:convert';

import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get.dart';

class ProductService extends GetxService {
  //
  Future<List<ProductMaster>> shopProducts(String shopId) async {
    final products = await Amplify.DataStore.query(ProductMaster.classType,
        where: ProductMaster.SHOPMASTERID.eq(shopId));
    return products;
  }

  ///
  Future<List<ProductMaster>> allProducts() async {
    const queryDoc = r'''
    query AllProducts{
  listProductMasters{
    items {
      brand
      ATPQuantity
      amazon
      category
      clicks
      cit
      country
      createdAt
      currency
      description
      discount
      flipkart
      id
      keyword
      pincode
      other
      productImgUrl
      price
      productVideoUrl
      shopmasterID
      stockQuantity
      title
      updatedAt
    }
  }
}
    ''';
    final GraphQLRequest request = GraphQLRequest(document: queryDoc);
    final query = Amplify.API.query(request: request);
    final response = (await query.response).data;
    final body = jsonDecode(response);
    final prods = body['listProductMasters']['items'] as List<dynamic>;
    if (prods.isEmpty) {
      return const [];
    }
    return List.generate(
      prods.length,
      (int index) => ProductMaster.fromJson(
        prods[index],
      ),
    );
  }

  ///
  Future<List<ProductMaster>> productsByUser(String userId) async {
    final shops = await Amplify.DataStore.query(
      ShopMaster.classType,
      where: ShopMaster.USERMASTERID.eq(userId),
    );
    final products = <ProductMaster>[];
    for (final shop in shops) {
      final result = await Amplify.DataStore.query(
        ProductMaster.classType,
        where: ProductMaster.SHOPMASTERID.eq(shop.id),
      );
      products.addAll(result);
    }
    return products;
  }

  /// Search a product globally based solely on
  /// the search query
  Future<List<ProductMaster>> searchAllProducts(String searchQuery) async {
    final products = await Amplify.DataStore.query(
      ProductMaster.classType,
      where: ProductMaster.TITLE
          .contains(searchQuery)
          .or(ProductMaster.DESCRIPTION.contains(searchQuery)),
    );

    return products;
  }

  /// Search a product based on the search query
  /// And the shopId
  Future<List<ProductMaster>> searchProducts(
    String shopId, {
    required String searchQuery,
  }) async {
    final products = await Amplify.DataStore.query(
      ProductMaster.classType,
      where: ProductMaster.TITLE
          .contains(searchQuery)
          .or(ProductMaster.DESCRIPTION.contains(searchQuery))
          .and(ProductMaster.SHOPMASTERID.eq(shopId)),
    );
    return products;
  }

  ///
  Future<void> deleteProduct(ProductMaster product) async {
    await Amplify.DataStore.delete(product);
  }
}
