import 'dart:convert';

import 'package:amplified_todo/models/ShopMaster.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';

class UserService {
  ///
  Future<UserMaster?> getUser(String userId) async {
    String document = r'''
  query UserQuery($userId:ID!) {
    listUserMasters(filter: {id: {eq:$userId}}) {
      items {
      City
      Gender
      PinCode
      State
      StreetAddress
      bio
      createdAt
      email
      firstName
      gmail
      id
      profilePicUrl
      isVerified
      lastName
      lastSeen
      }
    }
  }
    ''';
    final request =
        GraphQLRequest(document: document, variables: {"userId": userId});
    final operation = Amplify.API.query(request: request);
    final response = (await operation.response).data;
    final body = jsonDecode(response);
    final users = body['listUserMasters']['items'] as List<dynamic>;
    if (users.isEmpty) {
      return null;
    }
    return UserMaster.fromJson(users.first);
  }

  ///

  ///
  /// Query email and if email does not exist
  /// Then the user is a new user
  Future<bool> userExists(String email) async {
    String document = r'''
       query UserQuery($email:String!) {
    listUserMasters(filter: {email: {eq:$email}}) {
      items {
        City
        Gender
        PinCode
        State
        StreetAddress
      }
    }
  }
    ''';
    final request =
        GraphQLRequest(document: document, variables: {"email": email});
    final operation = Amplify.API.query(request: request);
    final response = (await operation.response).data;
    final body = jsonDecode(response);
    final users = body['listUserMasters']['items'] as List<dynamic>;
    return users.isEmpty;
  }

  Future<UserMaster?> userByEmail(String email) async {
    String document = r'''
       query UserQuery($email:String!) {
    listUserMasters(filter: {email: {eq:$email}}) {
      items {
      City
      Gender
      PinCode
      State
      StreetAddress
      bio
      createdAt
      email
      firstName
      gmail
      id
      profilePicUrl
      isVerified
      lastName
      lastSeen
      }
    }
  }
    ''';
    final request =
        GraphQLRequest(document: document, variables: {"email": email});
    final operation = Amplify.API.query(request: request);
    final response = (await operation.response).data;
    final body = jsonDecode(response);
    final users = body['listUserMasters']['items'] as List<dynamic>;
    if (users.isEmpty) {
      return null;
    }
    return UserMaster.fromJson(users.first);
  }

  Future<UserMaster?> userByShop(String shopId) async {
    final shops = await Amplify.DataStore.query(ShopMaster.classType,
        where: ShopMaster.ID.eq(shopId));
    if (shops.isEmpty) {
      return null;
    }
    final userId = shops.first.id;
    final users = await Amplify.DataStore.query(
      UserMaster.classType,
      where: UserMaster.ID.eq(userId),
    );
    if (users.isEmpty) {
      return null;
    }
    return users.first;
  }
}
