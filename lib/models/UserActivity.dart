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


/** This is an auto generated class representing the UserActivity type in your schema. */
@immutable
class UserActivity extends Model {
  static const classType = const _UserActivityModelType();
  final String id;
  final TemporalTimestamp? _lastSeen;
  final String? _usermasterID;
  final bool? _isOnline;
  final TemporalDateTime? _createdAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalTimestamp? get lastSeen {
    return _lastSeen;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  bool? get isOnline {
    return _isOnline;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  const UserActivity._internal({required this.id, lastSeen, usermasterID, isOnline, createdAt}): _lastSeen = lastSeen, _usermasterID = usermasterID, _isOnline = isOnline, _createdAt = createdAt;
  
  factory UserActivity({String? id, TemporalTimestamp? lastSeen, String? usermasterID, bool? isOnline, TemporalDateTime? createdAt}) {
    return UserActivity._internal(
      id: id == null ? UUID.getUUID() : id,
      lastSeen: lastSeen,
      usermasterID: usermasterID,
      isOnline: isOnline,
      createdAt: createdAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserActivity &&
      id == other.id &&
      _lastSeen == other._lastSeen &&
      _usermasterID == other._usermasterID &&
      _isOnline == other._isOnline &&
      _createdAt == other._createdAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserActivity {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("lastSeen=" + (_lastSeen != null ? _lastSeen!.toString() : "null") + ", ");
    buffer.write("usermasterID=" + "$_usermasterID" + ", ");
    buffer.write("isOnline=" + (_isOnline != null ? _isOnline!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserActivity copyWith({String? id, TemporalTimestamp? lastSeen, String? usermasterID, bool? isOnline, TemporalDateTime? createdAt}) {
    return UserActivity(
      id: id ?? this.id,
      lastSeen: lastSeen ?? this.lastSeen,
      usermasterID: usermasterID ?? this.usermasterID,
      isOnline: isOnline ?? this.isOnline,
      createdAt: createdAt ?? this.createdAt);
  }
  
  UserActivity.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _lastSeen = json['lastSeen'] != null ? TemporalTimestamp.fromSeconds(json['lastSeen']) : null,
      _usermasterID = json['usermasterID'],
      _isOnline = json['isOnline'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'lastSeen': _lastSeen?.toSeconds(), 'usermasterID': _usermasterID, 'isOnline': _isOnline, 'createdAt': _createdAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "userActivity.id");
  static final QueryField LASTSEEN = QueryField(fieldName: "lastSeen");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static final QueryField ISONLINE = QueryField(fieldName: "isOnline");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserActivity";
    modelSchemaDefinition.pluralName = "UserActivities";
    
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
      key: UserActivity.LASTSEEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserActivity.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserActivity.ISONLINE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserActivity.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserActivityModelType extends ModelType<UserActivity> {
  const _UserActivityModelType();
  
  @override
  UserActivity fromJson(Map<String, dynamic> jsonData) {
    return UserActivity.fromJson(jsonData);
  }
}