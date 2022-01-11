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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the UserProductReview type in your schema. */
@immutable
class UserProductReview extends Model {
  static const classType = const _UserProductReviewModelType();
  final String id;
  final String? _usermasterID;
  final String? _productmasterID;
  final String? _comment;
  final String? _rating;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  String? get productmasterID {
    return _productmasterID;
  }
  
  String? get comment {
    return _comment;
  }
  
  String? get rating {
    return _rating;
  }
  
  const UserProductReview._internal({required this.id, usermasterID, productmasterID, comment, rating}): _usermasterID = usermasterID, _productmasterID = productmasterID, _comment = comment, _rating = rating;
  
  factory UserProductReview({String? id, String? usermasterID, String? productmasterID, String? comment, String? rating}) {
    return UserProductReview._internal(
      id: id == null ? UUID.getUUID() : id,
      usermasterID: usermasterID,
      productmasterID: productmasterID,
      comment: comment,
      rating: rating);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProductReview &&
      id == other.id &&
      _usermasterID == other._usermasterID &&
      _productmasterID == other._productmasterID &&
      _comment == other._comment &&
      _rating == other._rating;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserProductReview {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usermasterID=" + "$_usermasterID" + ", ");
    buffer.write("productmasterID=" + "$_productmasterID" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("rating=" + "$_rating");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserProductReview copyWith({String? id, String? usermasterID, String? productmasterID, String? comment, String? rating}) {
    return UserProductReview(
      id: id ?? this.id,
      usermasterID: usermasterID ?? this.usermasterID,
      productmasterID: productmasterID ?? this.productmasterID,
      comment: comment ?? this.comment,
      rating: rating ?? this.rating);
  }
  
  UserProductReview.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usermasterID = json['usermasterID'],
      _productmasterID = json['productmasterID'],
      _comment = json['comment'],
      _rating = json['rating'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usermasterID': _usermasterID, 'productmasterID': _productmasterID, 'comment': _comment, 'rating': _rating
  };

  static final QueryField ID = QueryField(fieldName: "userProductReview.id");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static final QueryField PRODUCTMASTERID = QueryField(fieldName: "productmasterID");
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserProductReview";
    modelSchemaDefinition.pluralName = "UserProductReviews";
    
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
      key: UserProductReview.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.PRODUCTMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.COMMENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserProductReview.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UserProductReviewModelType extends ModelType<UserProductReview> {
  const _UserProductReviewModelType();
  
  @override
  UserProductReview fromJson(Map<String, dynamic> jsonData) {
    return UserProductReview.fromJson(jsonData);
  }
}