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


/** This is an auto generated class representing the CountryList type in your schema. */
@immutable
class CountryList extends Model {
  static const classType = const _CountryListModelType();
  final String id;
  final String? _phnPin;
  final String? _countryName;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get phnPin {
    try {
      return _phnPin!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get countryName {
    try {
      return _countryName!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const CountryList._internal({required this.id, required phnPin, required countryName}): _phnPin = phnPin, _countryName = countryName;
  
  factory CountryList({String? id, required String phnPin, required String countryName}) {
    return CountryList._internal(
      id: id == null ? UUID.getUUID() : id,
      phnPin: phnPin,
      countryName: countryName);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryList &&
      id == other.id &&
      _phnPin == other._phnPin &&
      _countryName == other._countryName;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CountryList {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("phnPin=" + "$_phnPin" + ", ");
    buffer.write("countryName=" + "$_countryName");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CountryList copyWith({String? id, String? phnPin, String? countryName}) {
    return CountryList(
      id: id ?? this.id,
      phnPin: phnPin ?? this.phnPin,
      countryName: countryName ?? this.countryName);
  }
  
  CountryList.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _phnPin = json['phnPin'],
      _countryName = json['countryName'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'phnPin': _phnPin, 'countryName': _countryName
  };

  static final QueryField ID = QueryField(fieldName: "countryList.id");
  static final QueryField PHNPIN = QueryField(fieldName: "phnPin");
  static final QueryField COUNTRYNAME = QueryField(fieldName: "countryName");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CountryList";
    modelSchemaDefinition.pluralName = "CountryLists";
    
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
      key: CountryList.PHNPIN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CountryList.COUNTRYNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CountryListModelType extends ModelType<CountryList> {
  const _CountryListModelType();
  
  @override
  CountryList fromJson(Map<String, dynamic> jsonData) {
    return CountryList.fromJson(jsonData);
  }
}