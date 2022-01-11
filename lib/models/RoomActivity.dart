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


/** This is an auto generated class representing the RoomActivity type in your schema. */
@immutable
class RoomActivity extends Model {
  static const classType = const _RoomActivityModelType();
  final String id;
  final TemporalDateTime? _lastSeen;
  final String? _userId;
  final bool? _isOnline;
  final String? _roomID;
  final String? _usermasterID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  TemporalDateTime get lastSeen {
    try {
      return _lastSeen!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get userId {
    try {
      return _userId!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  bool? get isOnline {
    return _isOnline;
  }
  
  String? get roomID {
    return _roomID;
  }
  
  String? get usermasterID {
    return _usermasterID;
  }
  
  const RoomActivity._internal({required this.id, required lastSeen, required userId, isOnline, roomID, usermasterID}): _lastSeen = lastSeen, _userId = userId, _isOnline = isOnline, _roomID = roomID, _usermasterID = usermasterID;
  
  factory RoomActivity({String? id, required TemporalDateTime lastSeen, required String userId, bool? isOnline, String? roomID, String? usermasterID}) {
    return RoomActivity._internal(
      id: id == null ? UUID.getUUID() : id,
      lastSeen: lastSeen,
      userId: userId,
      isOnline: isOnline,
      roomID: roomID,
      usermasterID: usermasterID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoomActivity &&
      id == other.id &&
      _lastSeen == other._lastSeen &&
      _userId == other._userId &&
      _isOnline == other._isOnline &&
      _roomID == other._roomID &&
      _usermasterID == other._usermasterID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("RoomActivity {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("lastSeen=" + (_lastSeen != null ? _lastSeen!.format() : "null") + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("isOnline=" + (_isOnline != null ? _isOnline!.toString() : "null") + ", ");
    buffer.write("roomID=" + "$_roomID" + ", ");
    buffer.write("usermasterID=" + "$_usermasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  RoomActivity copyWith({String? id, TemporalDateTime? lastSeen, String? userId, bool? isOnline, String? roomID, String? usermasterID}) {
    return RoomActivity(
      id: id ?? this.id,
      lastSeen: lastSeen ?? this.lastSeen,
      userId: userId ?? this.userId,
      isOnline: isOnline ?? this.isOnline,
      roomID: roomID ?? this.roomID,
      usermasterID: usermasterID ?? this.usermasterID);
  }
  
  RoomActivity.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _lastSeen = json['lastSeen'] != null ? TemporalDateTime.fromString(json['lastSeen']) : null,
      _userId = json['userId'],
      _isOnline = json['isOnline'],
      _roomID = json['roomID'],
      _usermasterID = json['usermasterID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'lastSeen': _lastSeen?.format(), 'userId': _userId, 'isOnline': _isOnline, 'roomID': _roomID, 'usermasterID': _usermasterID
  };

  static final QueryField ID = QueryField(fieldName: "roomActivity.id");
  static final QueryField LASTSEEN = QueryField(fieldName: "lastSeen");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField ISONLINE = QueryField(fieldName: "isOnline");
  static final QueryField ROOMID = QueryField(fieldName: "roomID");
  static final QueryField USERMASTERID = QueryField(fieldName: "usermasterID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "RoomActivity";
    modelSchemaDefinition.pluralName = "RoomActivities";
    
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
      key: RoomActivity.LASTSEEN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivity.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivity.ISONLINE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivity.ROOMID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivity.USERMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _RoomActivityModelType extends ModelType<RoomActivity> {
  const _RoomActivityModelType();
  
  @override
  RoomActivity fromJson(Map<String, dynamic> jsonData) {
    return RoomActivity.fromJson(jsonData);
  }
}