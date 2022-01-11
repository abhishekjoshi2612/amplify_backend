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


/** This is an auto generated class representing the UserShopReview type in your schema. */
@immutable
class UserShopReview extends Model {
  static const classType = const _UserShopReviewModelType();
  final String id;
  final String? _comment;
  final int? _rating;
  final String? _shopmasterID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _usermasterID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get comment {
    return _comment;
  }
  
  int? get rating {
    return _rating;
  }
  
  String? get shopmasterID {
    return _shopmasterID;
  }
  
  TemporalDateTime get createdAt {
    try {
      return _createdAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  TemporalDateTime get updatedAt {
    try {
      return _updatedAt!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  const UserShopReview._internal({required this.id, comment, rating, shopmasterID, required createdAt, required updatedAt, usermasterID}): _comment = comment, _rating = rating, _shopmasterID = shopmasterID, _createdAt = createdAt, _updatedAt = updatedAt, _usermasterID = usermasterID;
  
  factory UserShopReview({String? id, String? comment, int? rating, String? shopmasterID, required TemporalDateTime createdAt, required TemporalDateTime updatedAt, String? usermasterID}) {
    return UserShopReview._internal(
      id: id == null ? UUID.getUUID() : id,
      comment: comment,
      rating: rating,
      shopmasterID: shopmasterID,
      createdAt: createdAt,
      updatedAt: updatedAt,
      usermasterID: usermasterID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserShopReview &&
      id == other.id &&
      _comment == other._comment &&
      _rating == other._rating &&
      _shopmasterID == other._shopmasterID &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _usermasterID == other._usermasterID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserShopReview {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("shopmasterID=" + "$_shopmasterID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("usermasterID=" + "$_usermasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserShopReview copyWith({String? id, String? comment, int? rating, String? shopmasterID, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? usermasterID}) {
    return UserShopReview(
      id: id ?? this.id,
      comment: comment ?? this.comment,
      rating: rating ?? this.rating,
      shopmasterID: shopmasterID ?? this.shopmasterID,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      usermasterID: usermasterID ?? this.usermasterID);
  }
  
  UserShopReview.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _comment = json['comment'],
      _rating = (json['rating'] as num?)?.toInt(),
      _shopmasterID = json['shopmasterID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _usermasterID = json['usermasterID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'comment': _comment, 'rating': _rating, 'shopmasterID': _shopmasterID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'usermasterID': _usermasterID
  };

  static final QueryField ID = QueryField(fieldName: "userShopReview.id");
  static final QueryField COMMENT = QueryField(fieldName: "comment");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField SHOPMASTERID = QueryField(fieldName: "shopmasterID");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserShopReview";
    modelSchemaDefinition.pluralName = "UserShopReviews";
    
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
      key: UserShopReview.COMMENT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.SHOPMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.CREATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.UPDATEDAT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserShopReview.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UserShopReviewModelType extends ModelType<UserShopReview> {
  const _UserShopReviewModelType();
  
  @override
  UserShopReview fromJson(Map<String, dynamic> jsonData) {
    return UserShopReview.fromJson(jsonData);
  }
}