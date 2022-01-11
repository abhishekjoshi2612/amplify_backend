import 'dart:convert';

import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';

class ShopService {
  ///
  Future<List<ShopMaster>> userShops(String userId) async {
    final shops = await Amplify.DataStore.query(ShopMaster.classType,
        where: ShopMaster.USERMASTERID.eq(userId));
    return shops;
  }

  ///
  Future<ShopMaster?> getShopById(String id) async {
    const queryDoc = r'''
    query MyQuery($shopId:ID!) {
  getShopMaster(id: $shopId) {
    Passwor
    PinCode
    State
    StreetAddress
    audioSupported
    breakEnd
    breakStart
    buildingNumber
    chatSupported
    city
    email
    createdAt
    id
    maxCallDuration
    mobileNumber
    shopClosing
    shopCoverImg
    shopImgUrl
    shopOpening
    shopName
    updatedAt
    usermasterID
    videoSupported
  }
}
    ''';
    final GraphQLRequest request =
        GraphQLRequest(document: queryDoc, variables: {"shopId": id});
    final query = Amplify.API.query(request: request);
    final response = (await query.response).data;
    final body = jsonDecode(response);
    final shopsData = body['getShopMaster'] as Map<String, dynamic>;
    return ShopMaster.fromJson(shopsData);
  }

  ///
  Future<ShopMaster> shopByUser(String id) async {
    final shops = await Amplify.DataStore.query(
      ShopMaster.classType,
      where: ShopMaster.USERMASTERID.eq(id),
    );
    return shops.first;
  }

  ///
  Future<List<ShopMaster>> allShops() async {
    final shops = await Amplify.DataStore.query(ShopMaster.classType);
    return shops;
  }

  /// Search shops globally based on the search query
  Future<List<ShopMaster>> searchShops(String searchQuery) async {
    final shops = await Amplify.DataStore.query(
      ShopMaster.classType,
      where: ShopMaster.SHOPNAME.contains(searchQuery),
    );
    return shops;
  }
}
