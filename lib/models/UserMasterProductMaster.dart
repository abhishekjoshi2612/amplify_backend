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


/** This is an auto generated class representing the UserMasterProductMaster type in your schema. */
@immutable
class UserMasterProductMaster extends Model {
  static const classType = const _UserMasterProductMasterModelType();
  final String id;
  final ProductMaster? _productmaster;
  final UserMaster? _usermaster;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  ProductMaster get productmaster {
    try {
      return _productmaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  UserMaster get usermaster {
    try {
      return _usermaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const UserMasterProductMaster._internal({required this.id, required productmaster, required usermaster}): _productmaster = productmaster, _usermaster = usermaster;
  
  factory UserMasterProductMaster({String? id, required ProductMaster productmaster, required UserMaster usermaster}) {
    return UserMasterProductMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      productmaster: productmaster,
      usermaster: usermaster);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMasterProductMaster &&
      id == other.id &&
      _productmaster == other._productmaster &&
      _usermaster == other._usermaster;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserMasterProductMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("productmaster=" + (_productmaster != null ? _productmaster!.toString() : "null") + ", ");
    buffer.write("usermaster=" + (_usermaster != null ? _usermaster!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserMasterProductMaster copyWith({String? id, ProductMaster? productmaster, UserMaster? usermaster}) {
    return UserMasterProductMaster(
      id: id ?? this.id,
      productmaster: productmaster ?? this.productmaster,
      usermaster: usermaster ?? this.usermaster);
  }
  
  UserMasterProductMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _productmaster = json['productmaster']?['serializedData'] != null
        ? ProductMaster.fromJson(new Map<String, dynamic>.from(json['productmaster']['serializedData']))
        : null,
      _usermaster = json['usermaster']?['serializedData'] != null
        ? UserMaster.fromJson(new Map<String, dynamic>.from(json['usermaster']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'productmaster': _productmaster?.toJson(), 'usermaster': _usermaster?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "userMasterProductMaster.id");
  static final QueryField PRODUCTMASTER = QueryField(
    fieldName: "productmaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ProductMaster).toString()));
  static final QueryField USERMASTER = QueryField(
    fieldName: "usermaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMaster).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserMasterProductMaster";
    modelSchemaDefinition.pluralName = "UserMasterProductMasters";
    
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
      key: UserMasterProductMaster.PRODUCTMASTER,
      isRequired: true,
      targetName: "productmasterID",
      ofModelName: (ProductMaster).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: UserMasterProductMaster.USERMASTER,
      isRequired: true,
      targetName: "usermasterID",
      ofModelName: (UserMaster).toString()
    ));
  });
}

class _UserMasterProductMasterModelType extends ModelType<UserMasterProductMaster> {
  const _UserMasterProductMasterModelType();
  
  @override
  UserMasterProductMaster fromJson(Map<String, dynamic> jsonData) {
    return UserMasterProductMaster.fromJson(jsonData);
  }
}