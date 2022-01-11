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


/** This is an auto generated class representing the PinList type in your schema. */
@immutable
class PinList extends Model {
  static const classType = const _PinListModelType();
  final String id;
  final String? _phnPins;
  final String? _Name;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get phnPins {
    try {
      return _phnPins!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get Name {
    try {
      return _Name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const PinList._internal({required this.id, required phnPins, required Name}): _phnPins = phnPins, _Name = Name;
  
  factory PinList({String? id, required String phnPins, required String Name}) {
    return PinList._internal(
      id: id == null ? UUID.getUUID() : id,
      phnPins: phnPins,
      Name: Name);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinList &&
      id == other.id &&
      _phnPins == other._phnPins &&
      _Name == other._Name;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PinList {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("phnPins=" + "$_phnPins" + ", ");
    buffer.write("Name=" + "$_Name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PinList copyWith({String? id, String? phnPins, String? Name}) {
    return PinList(
      id: id ?? this.id,
      phnPins: phnPins ?? this.phnPins,
      Name: Name ?? this.Name);
  }
  
  PinList.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _phnPins = json['phnPins'],
      _Name = json['Name'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'phnPins': _phnPins, 'Name': _Name
  };

  static final QueryField ID = QueryField(fieldName: "pinList.id");
  static final QueryField PHNPINS = QueryField(fieldName: "phnPins");
  static final QueryField NAME = QueryField(fieldName: "Name");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PinList";
    modelSchemaDefinition.pluralName = "PinLists";
    
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
      key: PinList.PHNPINS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: PinList.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _PinListModelType extends ModelType<PinList> {
  const _PinListModelType();
  
  @override
  PinList fromJson(Map<String, dynamic> jsonData) {
    return PinList.fromJson(jsonData);
  }
}