/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'ChatData.dart';
import 'CountryList.dart';
import 'Followers.dart';
import 'FollowersUserMaster.dart';
import 'MediaType.dart';
import 'PinList.dart';
import 'Preferences.dart';
import 'ProductMaster.dart';
import 'RecentSearch.dart';
import 'Room.dart';
import 'RoomActivity.dart';
import 'ShopMaster.dart';
import 'ShopMedia.dart';
import 'UserActivity.dart';
import 'UserMaster.dart';
import 'UserMasterProductMaster.dart';
import 'UserMasterRoom.dart';
import 'UserProductReview.dart';
import 'UserShopReview.dart';

export 'ChatData.dart';
export 'CountryList.dart';
export 'Followers.dart';
export 'FollowersUserMaster.dart';
export 'MediaType.dart';
export 'MessageType.dart';
export 'PinList.dart';
export 'Preferences.dart';
export 'ProductMaster.dart';
export 'RecentSearch.dart';
export 'Room.dart';
export 'RoomActivity.dart';
export 'ShopMaster.dart';
export 'ShopMedia.dart';
export 'UserActivity.dart';
export 'UserMaster.dart';
export 'UserMasterProductMaster.dart';
export 'UserMasterRoom.dart';
export 'UserProductReview.dart';
export 'UserShopReview.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "37d45a676ebf6780a9bfd03353cfab77";
  @override
  List<ModelSchema> modelSchemas = [ChatData.schema, CountryList.schema, Followers.schema, FollowersUserMaster.schema, MediaType.schema, PinList.schema, Preferences.schema, ProductMaster.schema, RecentSearch.schema, Room.schema, RoomActivity.schema, ShopMaster.schema, ShopMedia.schema, UserActivity.schema, UserMaster.schema, UserMasterProductMaster.schema, UserMasterRoom.schema, UserProductReview.schema, UserShopReview.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
    case "ChatData": {
    return ChatData.classType;
    }
    break;
    case "CountryList": {
    return CountryList.classType;
    }
    break;
    case "Followers": {
    return Followers.classType;
    }
    break;
    case "FollowersUserMaster": {
    return FollowersUserMaster.classType;
    }
    break;
    case "MediaType": {
    return MediaType.classType;
    }
    break;
    case "PinList": {
    return PinList.classType;
    }
    break;
    case "Preferences": {
    return Preferences.classType;
    }
    break;
    case "ProductMaster": {
    return ProductMaster.classType;
    }
    break;
    case "RecentSearch": {
    return RecentSearch.classType;
    }
    break;
    case "Room": {
    return Room.classType;
    }
    break;
    case "RoomActivity": {
    return RoomActivity.classType;
    }
    break;
    case "ShopMaster": {
    return ShopMaster.classType;
    }
    break;
    case "ShopMedia": {
    return ShopMedia.classType;
    }
    break;
    case "UserActivity": {
    return UserActivity.classType;
    }
    break;
    case "UserMaster": {
    return UserMaster.classType;
    }
    break;
    case "UserMasterProductMaster": {
    return UserMasterProductMaster.classType;
    }
    break;
    case "UserMasterRoom": {
    return UserMasterRoom.classType;
    }
    break;
    case "UserProductReview": {
    return UserProductReview.classType;
    }
    break;
    case "UserShopReview": {
    return UserShopReview.classType;
    }
    break;
    default: {
    throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
    }
  }
}