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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ShopMasterUserMaster type in your schema. */
@immutable
class ShopMasterUserMaster extends Model {
  static const classType = const _ShopMasterUserMasterModelType();
  final String id;
  final UserMaster? _usermaster;
  final ShopMaster? _shopmaster;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  UserMaster get usermaster {
    try {
      return _usermaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  ShopMaster get shopmaster {
    try {
      return _shopmaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const ShopMasterUserMaster._internal({required this.id, required usermaster, required shopmaster}): _usermaster = usermaster, _shopmaster = shopmaster;
  
  factory ShopMasterUserMaster({String? id, required UserMaster usermaster, required ShopMaster shopmaster}) {
    return ShopMasterUserMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      usermaster: usermaster,
      shopmaster: shopmaster);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopMasterUserMaster &&
      id == other.id &&
      _usermaster == other._usermaster &&
      _shopmaster == other._shopmaster;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopMasterUserMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usermaster=" + (_usermaster != null ? _usermaster!.toString() : "null") + ", ");
    buffer.write("shopmaster=" + (_shopmaster != null ? _shopmaster!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopMasterUserMaster copyWith({String? id, UserMaster? usermaster, ShopMaster? shopmaster}) {
    return ShopMasterUserMaster(
      id: id ?? this.id,
      usermaster: usermaster ?? this.usermaster,
      shopmaster: shopmaster ?? this.shopmaster);
  }
  
  ShopMasterUserMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usermaster = json['usermaster']?['serializedData'] != null
        ? UserMaster.fromJson(new Map<String, dynamic>.from(json['usermaster']['serializedData']))
        : null,
      _shopmaster = json['shopmaster']?['serializedData'] != null
        ? ShopMaster.fromJson(new Map<String, dynamic>.from(json['shopmaster']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usermaster': _usermaster?.toJson(), 'shopmaster': _shopmaster?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "shopMasterUserMaster.id");
  static final QueryField USERMASTER = QueryField(
    fieldName: "usermaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMaster).toString()));
  static final QueryField SHOPMASTER = QueryField(
    fieldName: "shopmaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ShopMaster).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopMasterUserMaster";
    modelSchemaDefinition.pluralName = "ShopMasterUserMasters";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ShopMasterUserMaster.USERMASTER,
      isRequired: true,
      targetName: "usermasterID",
      ofModelName: (UserMaster).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ShopMasterUserMaster.SHOPMASTER,
      isRequired: true,
      targetName: "shopmasterID",
      ofModelName: (ShopMaster).toString()
    ));
  });
}

class _ShopMasterUserMasterModelType extends ModelType<ShopMasterUserMaster> {
  const _ShopMasterUserMasterModelType();
  
  @override
  ShopMasterUserMaster fromJson(Map<String, dynamic> jsonData) {
    return ShopMasterUserMaster.fromJson(jsonData);
  }
}