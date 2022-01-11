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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ShopMaster type in your schema. */
@immutable
class ShopMaster extends Model {
  static const classType = const _ShopMasterModelType();
  final String id;
  final String? _PinCode;
  final String? _city;
  final String? _buildingNumber;
  final String? _shopName;
  final String? _email;
  final String? _mobileNumber;
  final String? _maxCallDuration;
  final String? _videoSupported;
  final String? _audioSupported;
  final String? _chatSupported;
  final String? _breakStart;
  final String? _breakEnd;
  final TemporalTime? _shopOpening;
  final TemporalTime? _shopClosing;
  final String? _usermasterID;
  final List<ShopMedia>? _ShopMediaRelation;
  final List<UserShopReview>? _UserShopReviews;
  final String? _State;
  final String? _StreetAddress;
  final String? _Passwor;
  final String? _shopImgUrl;
  final String? _shopCoverImg;
  final String? _createdAt;
  final List<ProductMaster>? _ProductMasters;
  final List<Followers>? _shopFollowers;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get PinCode {
    return _PinCode;
  }
  
  String? get city {
    return _city;
  }
  
  String? get buildingNumber {
    return _buildingNumber;
  }
  
  String? get shopName {
    return _shopName;
  }
  
  String? get email {
    return _email;
  }
  
  String? get mobileNumber {
    return _mobileNumber;
  }
  
  String? get maxCallDuration {
    return _maxCallDuration;
  }
  
  String? get videoSupported {
    return _videoSupported;
  }
  
  String? get audioSupported {
    return _audioSupported;
  }
  
  String? get chatSupported {
    return _chatSupported;
  }
  
  String? get breakStart {
    return _breakStart;
  }
  
  String? get breakEnd {
    return _breakEnd;
  }
  
  TemporalTime? get shopOpening {
    return _shopOpening;
  }
  
  TemporalTime? get shopClosing {
    return _shopClosing;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  List<ShopMedia>? get ShopMediaRelation {
    return _ShopMediaRelation;
  }
  
  List<UserShopReview>? get UserShopReviews {
    return _UserShopReviews;
  }
  
  String? get State {
    return _State;
  }
  
  String? get StreetAddress {
    return _StreetAddress;
  }
  
  String? get Passwor {
    return _Passwor;
  }
  
  String? get shopImgUrl {
    return _shopImgUrl;
  }
  
  String? get shopCoverImg {
    return _shopCoverImg;
  }
  
  String? get createdAt {
    return _createdAt;
  }
  
  List<ProductMaster>? get ProductMasters {
    return _ProductMasters;
  }
  
  List<Followers>? get shopFollowers {
    return _shopFollowers;
  }
  
  const ShopMaster._internal({required this.id, PinCode, city, buildingNumber, shopName, email, mobileNumber, maxCallDuration, videoSupported, audioSupported, chatSupported, breakStart, breakEnd, shopOpening, shopClosing, usermasterID, ShopMediaRelation, UserShopReviews, State, StreetAddress, Passwor, shopImgUrl, shopCoverImg, createdAt, ProductMasters, shopFollowers}): _PinCode = PinCode, _city = city, _buildingNumber = buildingNumber, _shopName = shopName, _email = email, _mobileNumber = mobileNumber, _maxCallDuration = maxCallDuration, _videoSupported = videoSupported, _audioSupported = audioSupported, _chatSupported = chatSupported, _breakStart = breakStart, _breakEnd = breakEnd, _shopOpening = shopOpening, _shopClosing = shopClosing, _usermasterID = usermasterID, _ShopMediaRelation = ShopMediaRelation, _UserShopReviews = UserShopReviews, _State = State, _StreetAddress = StreetAddress, _Passwor = Passwor, _shopImgUrl = shopImgUrl, _shopCoverImg = shopCoverImg, _createdAt = createdAt, _ProductMasters = ProductMasters, _shopFollowers = shopFollowers;
  
  factory ShopMaster({String? id, String? PinCode, String? city, String? buildingNumber, String? shopName, String? email, String? mobileNumber, String? maxCallDuration, String? videoSupported, String? audioSupported, String? chatSupported, String? breakStart, String? breakEnd, TemporalTime? shopOpening, TemporalTime? shopClosing, String? usermasterID, List<ShopMedia>? ShopMediaRelation, List<UserShopReview>? UserShopReviews, String? State, String? StreetAddress, String? Passwor, String? shopImgUrl, String? shopCoverImg, String? createdAt, List<ProductMaster>? ProductMasters, List<Followers>? shopFollowers}) {
    return ShopMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      PinCode: PinCode,
      city: city,
      buildingNumber: buildingNumber,
      shopName: shopName,
      email: email,
      mobileNumber: mobileNumber,
      maxCallDuration: maxCallDuration,
      videoSupported: videoSupported,
      audioSupported: audioSupported,
      chatSupported: chatSupported,
      breakStart: breakStart,
      breakEnd: breakEnd,
      shopOpening: shopOpening,
      shopClosing: shopClosing,
      usermasterID: usermasterID,
      ShopMediaRelation: ShopMediaRelation != null ? List<ShopMedia>.unmodifiable(ShopMediaRelation) : ShopMediaRelation,
      UserShopReviews: UserShopReviews != null ? List<UserShopReview>.unmodifiable(UserShopReviews) : UserShopReviews,
      State: State,
      StreetAddress: StreetAddress,
      Passwor: Passwor,
      shopImgUrl: shopImgUrl,
      shopCoverImg: shopCoverImg,
      createdAt: createdAt,
      ProductMasters: ProductMasters != null ? List<ProductMaster>.unmodifiable(ProductMasters) : ProductMasters,
      shopFollowers: shopFollowers != null ? List<Followers>.unmodifiable(shopFollowers) : shopFollowers);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopMaster &&
      id == other.id &&
      _PinCode == other._PinCode &&
      _city == other._city &&
      _buildingNumber == other._buildingNumber &&
      _shopName == other._shopName &&
      _email == other._email &&
      _mobileNumber == other._mobileNumber &&
      _maxCallDuration == other._maxCallDuration &&
      _videoSupported == other._videoSupported &&
      _audioSupported == other._audioSupported &&
      _chatSupported == other._chatSupported &&
      _breakStart == other._breakStart &&
      _breakEnd == other._breakEnd &&
      _shopOpening == other._shopOpening &&
      _shopClosing == other._shopClosing &&
      _usermasterID == other._usermasterID &&
      DeepCollectionEquality().equals(_ShopMediaRelation, other._ShopMediaRelation) &&
      DeepCollectionEquality().equals(_UserShopReviews, other._UserShopReviews) &&
      _State == other._State &&
      _StreetAddress == other._StreetAddress &&
      _Passwor == other._Passwor &&
      _shopImgUrl == other._shopImgUrl &&
      _shopCoverImg == other._shopCoverImg &&
      _createdAt == other._createdAt &&
      DeepCollectionEquality().equals(_ProductMasters, other._ProductMasters) &&
      DeepCollectionEquality().equals(_shopFollowers, other._shopFollowers);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("PinCode=" + "$_PinCode" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("buildingNumber=" + "$_buildingNumber" + ", ");
    buffer.write("shopName=" + "$_shopName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("mobileNumber=" + "$_mobileNumber" + ", ");
    buffer.write("maxCallDuration=" + "$_maxCallDuration" + ", ");
    buffer.write("videoSupported=" + "$_videoSupported" + ", ");
    buffer.write("audioSupported=" + "$_audioSupported" + ", ");
    buffer.write("chatSupported=" + "$_chatSupported" + ", ");
    buffer.write("breakStart=" + "$_breakStart" + ", ");
    buffer.write("breakEnd=" + "$_breakEnd" + ", ");
    buffer.write("shopOpening=" + (_shopOpening != null ? _shopOpening!.format() : "null") + ", ");
    buffer.write("shopClosing=" + (_shopClosing != null ? _shopClosing!.format() : "null") + ", ");
    buffer.write("usermasterID=" + "$_usermasterID" + ", ");
    buffer.write("State=" + "$_State" + ", ");
    buffer.write("StreetAddress=" + "$_StreetAddress" + ", ");
    buffer.write("Passwor=" + "$_Passwor" + ", ");
    buffer.write("shopImgUrl=" + "$_shopImgUrl" + ", ");
    buffer.write("shopCoverImg=" + "$_shopCoverImg" + ", ");
    buffer.write("createdAt=" + "$_createdAt");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopMaster copyWith({String? id, String? PinCode, String? city, String? buildingNumber, String? shopName, String? email, String? mobileNumber, String? maxCallDuration, String? videoSupported, String? audioSupported, String? chatSupported, String? breakStart, String? breakEnd, TemporalTime? shopOpening, TemporalTime? shopClosing, String? usermasterID, List<ShopMedia>? ShopMediaRelation, List<UserShopReview>? UserShopReviews, String? State, String? StreetAddress, String? Passwor, String? shopImgUrl, String? shopCoverImg, String? createdAt, List<ProductMaster>? ProductMasters, List<Followers>? shopFollowers}) {
    return ShopMaster(
      id: id ?? this.id,
      PinCode: PinCode ?? this.PinCode,
      city: city ?? this.city,
      buildingNumber: buildingNumber ?? this.buildingNumber,
      shopName: shopName ?? this.shopName,
      email: email ?? this.email,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      maxCallDuration: maxCallDuration ?? this.maxCallDuration,
      videoSupported: videoSupported ?? this.videoSupported,
      audioSupported: audioSupported ?? this.audioSupported,
      chatSupported: chatSupported ?? this.chatSupported,
      breakStart: breakStart ?? this.breakStart,
      breakEnd: breakEnd ?? this.breakEnd,
      shopOpening: shopOpening ?? this.shopOpening,
      shopClosing: shopClosing ?? this.shopClosing,
      usermasterID: usermasterID ?? this.usermasterID,
      ShopMediaRelation: ShopMediaRelation ?? this.ShopMediaRelation,
      UserShopReviews: UserShopReviews ?? this.UserShopReviews,
      State: State ?? this.State,
      StreetAddress: StreetAddress ?? this.StreetAddress,
      Passwor: Passwor ?? this.Passwor,
      shopImgUrl: shopImgUrl ?? this.shopImgUrl,
      shopCoverImg: shopCoverImg ?? this.shopCoverImg,
      createdAt: createdAt ?? this.createdAt,
      ProductMasters: ProductMasters ?? this.ProductMasters,
      shopFollowers: shopFollowers ?? this.shopFollowers);
  }
  
  ShopMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _PinCode = json['PinCode'],
      _city = json['city'],
      _buildingNumber = json['buildingNumber'],
      _shopName = json['shopName'],
      _email = json['email'],
      _mobileNumber = json['mobileNumber'],
      _maxCallDuration = json['maxCallDuration'],
      _videoSupported = json['videoSupported'],
      _audioSupported = json['audioSupported'],
      _chatSupported = json['chatSupported'],
      _breakStart = json['breakStart'],
      _breakEnd = json['breakEnd'],
      _shopOpening = json['shopOpening'] != null ? TemporalTime.fromString(json['shopOpening']) : null,
      _shopClosing = json['shopClosing'] != null ? TemporalTime.fromString(json['shopClosing']) : null,
      _usermasterID = json['usermasterID'],
      _ShopMediaRelation = json['ShopMediaRelation'] is List
        ? (json['ShopMediaRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ShopMedia.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserShopReviews = json['UserShopReviews'] is List
        ? (json['UserShopReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserShopReview.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _State = json['State'],
      _StreetAddress = json['StreetAddress'],
      _Passwor = json['Passwor'],
      _shopImgUrl = json['shopImgUrl'],
      _shopCoverImg = json['shopCoverImg'],
      _createdAt = json['createdAt'],
      _ProductMasters = json['ProductMasters'] is List
        ? (json['ProductMasters'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ProductMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _shopFollowers = json['shopFollowers'] is List
        ? (json['shopFollowers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Followers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'PinCode': _PinCode, 'city': _city, 'buildingNumber': _buildingNumber, 'shopName': _shopName, 'email': _email, 'mobileNumber': _mobileNumber, 'maxCallDuration': _maxCallDuration, 'videoSupported': _videoSupported, 'audioSupported': _audioSupported, 'chatSupported': _chatSupported, 'breakStart': _breakStart, 'breakEnd': _breakEnd, 'shopOpening': _shopOpening?.format(), 'shopClosing': _shopClosing?.format(), 'usermasterID': _usermasterID, 'ShopMediaRelation': _ShopMediaRelation?.map((ShopMedia? e) => e?.toJson()).toList(), 'UserShopReviews': _UserShopReviews?.map((UserShopReview? e) => e?.toJson()).toList(), 'State': _State, 'StreetAddress': _StreetAddress, 'Passwor': _Passwor, 'shopImgUrl': _shopImgUrl, 'shopCoverImg': _shopCoverImg, 'createdAt': _createdAt, 'ProductMasters': _ProductMasters?.map((ProductMaster? e) => e?.toJson()).toList(), 'shopFollowers': _shopFollowers?.map((Followers? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "shopMaster.id");
  static final QueryField PINCODE = QueryField(fieldName: "PinCode");
  static final QueryField CITY = QueryField(fieldName: "city");
  static final QueryField BUILDINGNUMBER = QueryField(fieldName: "buildingNumber");
  static final QueryField SHOPNAME = QueryField(fieldName: "shopName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField MOBILENUMBER = QueryField(fieldName: "mobileNumber");
  static final QueryField MAXCALLDURATION = QueryField(fieldName: "maxCallDuration");
  static final QueryField VIDEOSUPPORTED = QueryField(fieldName: "videoSupported");
  static final QueryField AUDIOSUPPORTED = QueryField(fieldName: "audioSupported");
  static final QueryField CHATSUPPORTED = QueryField(fieldName: "chatSupported");
  static final QueryField BREAKSTART = QueryField(fieldName: "breakStart");
  static final QueryField BREAKEND = QueryField(fieldName: "breakEnd");
  static final QueryField SHOPOPENING = QueryField(fieldName: "shopOpening");
  static final QueryField SHOPCLOSING = QueryField(fieldName: "shopClosing");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static final QueryField SHOPMEDIARELATION = QueryField(
    fieldName: "ShopMediaRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ShopMedia).toString()));
  static final QueryField USERSHOPREVIEWS = QueryField(
    fieldName: "UserShopReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserShopReview).toString()));
  static final QueryField STATE = QueryField(fieldName: "State");
  static final QueryField STREETADDRESS = QueryField(fieldName: "StreetAddress");
  static final QueryField PASSWOR = QueryField(fieldName: "Passwor");
  static final QueryField SHOPIMGURL = QueryField(fieldName: "shopImgUrl");
  static final QueryField SHOPCOVERIMG = QueryField(fieldName: "shopCoverImg");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField PRODUCTMASTERS = QueryField(
    fieldName: "ProductMasters",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ProductMaster).toString()));
  static final QueryField SHOPFOLLOWERS = QueryField(
    fieldName: "shopFollowers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Followers).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopMaster";
    modelSchemaDefinition.pluralName = "ShopMasters";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.PINCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.CITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.BUILDINGNUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.SHOPNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.MOBILENUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.MAXCALLDURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.VIDEOSUPPORTED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.AUDIOSUPPORTED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.CHATSUPPORTED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.BREAKSTART,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.BREAKEND,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.SHOPOPENING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.SHOPCLOSING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ShopMaster.SHOPMEDIARELATION,
      isRequired: false,
      ofModelName: (ShopMedia).toString(),
      associatedKey: ShopMedia.SHOPMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ShopMaster.USERSHOPREVIEWS,
      isRequired: false,
      ofModelName: (UserShopReview).toString(),
      associatedKey: UserShopReview.SHOPMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.STATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.STREETADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.PASSWOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.SHOPIMGURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.SHOPCOVERIMG,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMaster.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ShopMaster.PRODUCTMASTERS,
      isRequired: false,
      ofModelName: (ProductMaster).toString(),
      associatedKey: ProductMaster.SHOPMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ShopMaster.SHOPFOLLOWERS,
      isRequired: false,
      ofModelName: (Followers).toString(),
      associatedKey: Followers.SHOPMASTERID
    ));
  });
}

class _ShopMasterModelType extends ModelType<ShopMaster> {
  const _ShopMasterModelType();
  
  @override
  ShopMaster fromJson(Map<String, dynamic> jsonData) {
    return ShopMaster.fromJson(jsonData);
  }
}