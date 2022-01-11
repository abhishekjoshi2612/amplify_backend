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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Preferences type in your schema. */
@immutable
class Preferences extends Model {
  static const classType = const _PreferencesModelType();
  final String id;
  final List<String>? _categor;
  final String? _latitude;
  final String? _longitude;
  final String? _usermasterID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<String>? get categor {
    return _categor;
  }
  
  String? get latitude {
    return _latitude;
  }
  
  String? get longitude {
    return _longitude;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  const Preferences._internal({required this.id, categor, latitude, longitude, usermasterID}): _categor = categor, _latitude = latitude, _longitude = longitude, _usermasterID = usermasterID;
  
  factory Preferences({String? id, List<String>? categor, String? latitude, String? longitude, String? usermasterID}) {
    return Preferences._internal(
      id: id == null ? UUID.getUUID() : id,
      categor: categor != null ? List<String>.unmodifiable(categor) : categor,
      latitude: latitude,
      longitude: longitude,
      usermasterID: usermasterID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Preferences &&
      id == other.id &&
      DeepCollectionEquality().equals(_categor, other._categor) &&
      _latitude == other._latitude &&
      _longitude == other._longitude &&
      _usermasterID == other._usermasterID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Preferences {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("categor=" + (_categor != null ? _categor!.toString() : "null") + ", ");
    buffer.write("latitude=" + "$_latitude" + ", ");
    buffer.write("longitude=" + "$_longitude" + ", ");
    buffer.write("usermasterID=" + "$_usermasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Preferences copyWith({String? id, List<String>? categor, String? latitude, String? longitude, String? usermasterID}) {
    return Preferences(
      id: id ?? this.id,
      categor: categor ?? this.categor,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      usermasterID: usermasterID ?? this.usermasterID);
  }
  
  Preferences.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _categor = json['categor']?.cast<String>(),
      _latitude = json['latitude'],
      _longitude = json['longitude'],
      _usermasterID = json['usermasterID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'categor': _categor, 'latitude': _latitude, 'longitude': _longitude, 'usermasterID': _usermasterID
  };

  static final QueryField ID = QueryField(fieldName: "preferences.id");
  static final QueryField CATEGOR = QueryField(fieldName: "categor");
  static final QueryField LATITUDE = QueryField(fieldName: "latitude");
  static final QueryField LONGITUDE = QueryField(fieldName: "longitude");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Preferences";
    modelSchemaDefinition.pluralName = "Preferences";
    
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
      key: Preferences.CATEGOR,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Preferences.LATITUDE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Preferences.LONGITUDE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Preferences.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _PreferencesModelType extends ModelType<Preferences> {
  const _PreferencesModelType();
  
  @override
  Preferences fromJson(Map<String, dynamic> jsonData) {
    return Preferences.fromJson(jsonData);
  }
}