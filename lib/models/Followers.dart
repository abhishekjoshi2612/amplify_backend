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


/** This is an auto generated class representing the Followers type in your schema. */
@immutable
class Followers extends Model {
  static const classType = const _FollowersModelType();
  final String id;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _shopmasterID;
  final String? _usermasterID;
  final List<FollowersUserMaster>? _FollowersUserMasters;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get shopmasterID {
    return _shopmasterID;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  List<FollowersUserMaster>? get FollowersUserMasters {
    return _FollowersUserMasters;
  }
  
  const Followers._internal({required this.id, createdAt, updatedAt, shopmasterID, usermasterID, FollowersUserMasters}): _createdAt = createdAt, _updatedAt = updatedAt, _shopmasterID = shopmasterID, _usermasterID = usermasterID, _FollowersUserMasters = FollowersUserMasters;
  
  factory Followers({String? id, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? shopmasterID, String? usermasterID, List<FollowersUserMaster>? FollowersUserMasters}) {
    return Followers._internal(
      id: id == null ? UUID.getUUID() : id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      shopmasterID: shopmasterID,
      usermasterID: usermasterID,
      FollowersUserMasters: FollowersUserMasters != null ? List<FollowersUserMaster>.unmodifiable(FollowersUserMasters) : FollowersUserMasters);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Followers &&
      id == other.id &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _shopmasterID == other._shopmasterID &&
      _usermasterID == other._usermasterID &&
      DeepCollectionEquality().equals(_FollowersUserMasters, other._FollowersUserMasters);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Followers {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("shopmasterID=" + "$_shopmasterID" + ", ");
    buffer.write("usermasterID=" + "$_usermasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Followers copyWith({String? id, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? shopmasterID, String? usermasterID, List<FollowersUserMaster>? FollowersUserMasters}) {
    return Followers(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      shopmasterID: shopmasterID ?? this.shopmasterID,
      usermasterID: usermasterID ?? this.usermasterID,
      FollowersUserMasters: FollowersUserMasters ?? this.FollowersUserMasters);
  }
  
  Followers.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _shopmasterID = json['shopmasterID'],
      _usermasterID = json['usermasterID'],
      _FollowersUserMasters = json['FollowersUserMasters'] is List
        ? (json['FollowersUserMasters'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FollowersUserMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'shopmasterID': _shopmasterID, 'usermasterID': _usermasterID, 'FollowersUserMasters': _FollowersUserMasters?.map((FollowersUserMaster? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "followers.id");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField SHOPMASTERID = QueryField(fieldName: "shopmasterID");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static final QueryField FOLLOWERSUSERMASTERS = QueryField(
    fieldName: "FollowersUserMasters",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (FollowersUserMaster).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Followers";
    modelSchemaDefinition.pluralName = "Followers";
    
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
      key: Followers.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Followers.UPDATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Followers.SHOPMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Followers.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Followers.FOLLOWERSUSERMASTERS,
      isRequired: false,
      ofModelName: (FollowersUserMaster).toString(),
      associatedKey: FollowersUserMaster.FOLLOWERS
    ));
  });
}

class _FollowersModelType extends ModelType<Followers> {
  const _FollowersModelType();
  
  @override
  Followers fromJson(Map<String, dynamic> jsonData) {
    return Followers.fromJson(jsonData);
  }
}