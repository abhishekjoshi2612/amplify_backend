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


/** This is an auto generated class representing the ProductMaster type in your schema. */
@immutable
class ProductMaster extends Model {
  static const classType = const _ProductMasterModelType();
  final String id;
  final String? _brand;
  final String? _ATPQuantity;
  final String? _category;
  final String? _title;
  final String? _description;
  final List<String>? _productImgUrl;
  final String? _productVideoUrl;
  final String? _clicks;
  final String? _price;
  final String? _discount;
  final String? _keyword;
  final String? _amazon;
  final String? _flipkart;
  final String? _other;
  final String? _stockQuantity;
  final List<UserMasterProductMaster>? _UserMasterProductMastersLikeRelationship;
  final List<UserProductReview>? _UserProductComments;
  final String? _cit;
  final String? _pincode;
  final String? _country;
  final String? _currency;
  final TemporalDateTime? _createdAt;
  final String? _shopmasterID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get brand {
    return _brand;
  }
  
  String? get ATPQuantity {
    return _ATPQuantity;
  }
  
  String? get category {
    return _category;
  }
  
  String? get title {
    return _title;
  }
  
  String? get description {
    return _description;
  }
  
  List<String> get productImgUrl {
    try {
      return _productImgUrl!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get productVideoUrl {
    return _productVideoUrl;
  }
  
  String? get clicks {
    return _clicks;
  }
  
  String? get price {
    return _price;
  }
  
  String? get discount {
    return _discount;
  }
  
  String? get keyword {
    return _keyword;
  }
  
  String? get amazon {
    return _amazon;
  }
  
  String? get flipkart {
    return _flipkart;
  }
  
  String? get other {
    return _other;
  }
  
  String? get stockQuantity {
    return _stockQuantity;
  }
  
  List<UserMasterProductMaster>? get UserMasterProductMastersLikeRelationship {
    return _UserMasterProductMastersLikeRelationship;
  }
  
  List<UserProductReview>? get UserProductComments {
    return _UserProductComments;
  }
  
  String? get cit {
    return _cit;
  }
  
  String? get pincode {
    return _pincode;
  }
  
  String? get country {
    return _country;
  }
  
  String? get currency {
    return _currency;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  String? get shopmasterID {
    return _shopmasterID;
  }
  
  const ProductMaster._internal({required this.id, brand, ATPQuantity, category, title, description, required productImgUrl, productVideoUrl, clicks, price, discount, keyword, amazon, flipkart, other, stockQuantity, UserMasterProductMastersLikeRelationship, UserProductComments, cit, pincode, country, currency, createdAt, shopmasterID}): _brand = brand, _ATPQuantity = ATPQuantity, _category = category, _title = title, _description = description, _productImgUrl = productImgUrl, _productVideoUrl = productVideoUrl, _clicks = clicks, _price = price, _discount = discount, _keyword = keyword, _amazon = amazon, _flipkart = flipkart, _other = other, _stockQuantity = stockQuantity, _UserMasterProductMastersLikeRelationship = UserMasterProductMastersLikeRelationship, _UserProductComments = UserProductComments, _cit = cit, _pincode = pincode, _country = country, _currency = currency, _createdAt = createdAt, _shopmasterID = shopmasterID;
  
  factory ProductMaster({String? id, String? brand, String? ATPQuantity, String? category, String? title, String? description, required List<String> productImgUrl, String? productVideoUrl, String? clicks, String? price, String? discount, String? keyword, String? amazon, String? flipkart, String? other, String? stockQuantity, List<UserMasterProductMaster>? UserMasterProductMastersLikeRelationship, List<UserProductReview>? UserProductComments, String? cit, String? pincode, String? country, String? currency, TemporalDateTime? createdAt, String? shopmasterID}) {
    return ProductMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      brand: brand,
      ATPQuantity: ATPQuantity,
      category: category,
      title: title,
      description: description,
      productImgUrl: productImgUrl != null ? List<String>.unmodifiable(productImgUrl) : productImgUrl,
      productVideoUrl: productVideoUrl,
      clicks: clicks,
      price: price,
      discount: discount,
      keyword: keyword,
      amazon: amazon,
      flipkart: flipkart,
      other: other,
      stockQuantity: stockQuantity,
      UserMasterProductMastersLikeRelationship: UserMasterProductMastersLikeRelationship != null ? List<UserMasterProductMaster>.unmodifiable(UserMasterProductMastersLikeRelationship) : UserMasterProductMastersLikeRelationship,
      UserProductComments: UserProductComments != null ? List<UserProductReview>.unmodifiable(UserProductComments) : UserProductComments,
      cit: cit,
      pincode: pincode,
      country: country,
      currency: currency,
      createdAt: createdAt,
      shopmasterID: shopmasterID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductMaster &&
      id == other.id &&
      _brand == other._brand &&
      _ATPQuantity == other._ATPQuantity &&
      _category == other._category &&
      _title == other._title &&
      _description == other._description &&
      DeepCollectionEquality().equals(_productImgUrl, other._productImgUrl) &&
      _productVideoUrl == other._productVideoUrl &&
      _clicks == other._clicks &&
      _price == other._price &&
      _discount == other._discount &&
      _keyword == other._keyword &&
      _amazon == other._amazon &&
      _flipkart == other._flipkart &&
      _other == other._other &&
      _stockQuantity == other._stockQuantity &&
      DeepCollectionEquality().equals(_UserMasterProductMastersLikeRelationship, other._UserMasterProductMastersLikeRelationship) &&
      DeepCollectionEquality().equals(_UserProductComments, other._UserProductComments) &&
      _cit == other._cit &&
      _pincode == other._pincode &&
      _country == other._country &&
      _currency == other._currency &&
      _createdAt == other._createdAt &&
      _shopmasterID == other._shopmasterID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ProductMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("brand=" + "$_brand" + ", ");
    buffer.write("ATPQuantity=" + "$_ATPQuantity" + ", ");
    buffer.write("category=" + "$_category" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("productImgUrl=" + (_productImgUrl != null ? _productImgUrl!.toString() : "null") + ", ");
    buffer.write("productVideoUrl=" + "$_productVideoUrl" + ", ");
    buffer.write("clicks=" + "$_clicks" + ", ");
    buffer.write("price=" + "$_price" + ", ");
    buffer.write("discount=" + "$_discount" + ", ");
    buffer.write("keyword=" + "$_keyword" + ", ");
    buffer.write("amazon=" + "$_amazon" + ", ");
    buffer.write("flipkart=" + "$_flipkart" + ", ");
    buffer.write("other=" + "$_other" + ", ");
    buffer.write("stockQuantity=" + "$_stockQuantity" + ", ");
    buffer.write("cit=" + "$_cit" + ", ");
    buffer.write("pincode=" + "$_pincode" + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("currency=" + "$_currency" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("shopmasterID=" + "$_shopmasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ProductMaster copyWith({String? id, String? brand, String? ATPQuantity, String? category, String? title, String? description, List<String>? productImgUrl, String? productVideoUrl, String? clicks, String? price, String? discount, String? keyword, String? amazon, String? flipkart, String? other, String? stockQuantity, List<UserMasterProductMaster>? UserMasterProductMastersLikeRelationship, List<UserProductReview>? UserProductComments, String? cit, String? pincode, String? country, String? currency, TemporalDateTime? createdAt, String? shopmasterID}) {
    return ProductMaster(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      ATPQuantity: ATPQuantity ?? this.ATPQuantity,
      category: category ?? this.category,
      title: title ?? this.title,
      description: description ?? this.description,
      productImgUrl: productImgUrl ?? this.productImgUrl,
      productVideoUrl: productVideoUrl ?? this.productVideoUrl,
      clicks: clicks ?? this.clicks,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      keyword: keyword ?? this.keyword,
      amazon: amazon ?? this.amazon,
      flipkart: flipkart ?? this.flipkart,
      other: other ?? this.other,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      UserMasterProductMastersLikeRelationship: UserMasterProductMastersLikeRelationship ?? this.UserMasterProductMastersLikeRelationship,
      UserProductComments: UserProductComments ?? this.UserProductComments,
      cit: cit ?? this.cit,
      pincode: pincode ?? this.pincode,
      country: country ?? this.country,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
      shopmasterID: shopmasterID ?? this.shopmasterID);
  }
  
  ProductMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _brand = json['brand'],
      _ATPQuantity = json['ATPQuantity'],
      _category = json['category'],
      _title = json['title'],
      _description = json['description'],
      _productImgUrl = json['productImgUrl']?.cast<String>(),
      _productVideoUrl = json['productVideoUrl'],
      _clicks = json['clicks'],
      _price = json['price'],
      _discount = json['discount'],
      _keyword = json['keyword'],
      _amazon = json['amazon'],
      _flipkart = json['flipkart'],
      _other = json['other'],
      _stockQuantity = json['stockQuantity'],
      _UserMasterProductMastersLikeRelationship = json['UserMasterProductMastersLikeRelationship'] is List
        ? (json['UserMasterProductMastersLikeRelationship'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserMasterProductMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserProductComments = json['UserProductComments'] is List
        ? (json['UserProductComments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserProductReview.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _cit = json['cit'],
      _pincode = json['pincode'],
      _country = json['country'],
      _currency = json['currency'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _shopmasterID = json['shopmasterID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'brand': _brand, 'ATPQuantity': _ATPQuantity, 'category': _category, 'title': _title, 'description': _description, 'productImgUrl': _productImgUrl, 'productVideoUrl': _productVideoUrl, 'clicks': _clicks, 'price': _price, 'discount': _discount, 'keyword': _keyword, 'amazon': _amazon, 'flipkart': _flipkart, 'other': _other, 'stockQuantity': _stockQuantity, 'UserMasterProductMastersLikeRelationship': _UserMasterProductMastersLikeRelationship?.map((UserMasterProductMaster? e) => e?.toJson()).toList(), 'UserProductComments': _UserProductComments?.map((UserProductReview? e) => e?.toJson()).toList(), 'cit': _cit, 'pincode': _pincode, 'country': _country, 'currency': _currency, 'createdAt': _createdAt?.format(), 'shopmasterID': _shopmasterID
  };

  static final QueryField ID = QueryField(fieldName: "productMaster.id");
  static final QueryField BRAND = QueryField(fieldName: "brand");
  static final QueryField ATPQUANTITY = QueryField(fieldName: "ATPQuantity");
  static final QueryField CATEGORY = QueryField(fieldName: "category");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField PRODUCTIMGURL = QueryField(fieldName: "productImgUrl");
  static final QueryField PRODUCTVIDEOURL = QueryField(fieldName: "productVideoUrl");
  static final QueryField CLICKS = QueryField(fieldName: "clicks");
  static final QueryField PRICE = QueryField(fieldName: "price");
  static final QueryField DISCOUNT = QueryField(fieldName: "discount");
  static final QueryField KEYWORD = QueryField(fieldName: "keyword");
  static final QueryField AMAZON = QueryField(fieldName: "amazon");
  static final QueryField FLIPKART = QueryField(fieldName: "flipkart");
  static final QueryField OTHER = QueryField(fieldName: "other");
  static final QueryField STOCKQUANTITY = QueryField(fieldName: "stockQuantity");
  static final QueryField USERMASTERPRODUCTMASTERSLIKERELATIONSHIP = QueryField(
    fieldName: "UserMasterProductMastersLikeRelationship",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMasterProductMaster).toString()));
  static final QueryField USERPRODUCTCOMMENTS = QueryField(
    fieldName: "UserProductComments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserProductReview).toString()));
  static final QueryField CIT = QueryField(fieldName: "cit");
  static final QueryField PINCODE = QueryField(fieldName: "pincode");
  static final QueryField COUNTRY = QueryField(fieldName: "country");
  static final QueryField CURRENCY = QueryField(fieldName: "currency");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField SHOPMASTERID = QueryField(fieldName: "shopmasterID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ProductMaster";
    modelSchemaDefinition.pluralName = "ProductMasters";
    
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
      key: ProductMaster.BRAND,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.ATPQUANTITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.CATEGORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.PRODUCTIMGURL,
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.PRODUCTVIDEOURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.CLICKS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.PRICE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.DISCOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.KEYWORD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.AMAZON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.FLIPKART,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.OTHER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.STOCKQUANTITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ProductMaster.USERMASTERPRODUCTMASTERSLIKERELATIONSHIP,
      isRequired: false,
      ofModelName: (UserMasterProductMaster).toString(),
      associatedKey: UserMasterProductMaster.PRODUCTMASTER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ProductMaster.USERPRODUCTCOMMENTS,
      isRequired: false,
      ofModelName: (UserProductReview).toString(),
      associatedKey: UserProductReview.PRODUCTMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.CIT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.PINCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.COUNTRY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.CURRENCY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ProductMaster.SHOPMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ProductMasterModelType extends ModelType<ProductMaster> {
  const _ProductMasterModelType();
  
  @override
  ProductMaster fromJson(Map<String, dynamic> jsonData) {
    return ProductMaster.fromJson(jsonData);
  }
}