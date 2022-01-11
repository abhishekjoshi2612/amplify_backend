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


/** This is an auto generated class representing the RoomActivi type in your schema. */
@immutable
class RoomActivi extends Model {
  static const classType = const _RoomActiviModelType();
  final String id;
  final TemporalDateTime? _lastSeen;
  final String? _userId;
  final String? _roomId;

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
  
  String get roomId {
    try {
      return _roomId!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const RoomActivi._internal({required this.id, required lastSeen, required userId, required roomId}): _lastSeen = lastSeen, _userId = userId, _roomId = roomId;
  
  factory RoomActivi({String? id, required TemporalDateTime lastSeen, required String userId, required String roomId}) {
    return RoomActivi._internal(
      id: id == null ? UUID.getUUID() : id,
      lastSeen: lastSeen,
      userId: userId,
      roomId: roomId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoomActivi &&
      id == other.id &&
      _lastSeen == other._lastSeen &&
      _userId == other._userId &&
      _roomId == other._roomId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("RoomActivi {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("lastSeen=" + (_lastSeen != null ? _lastSeen!.format() : "null") + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("roomId=" + "$_roomId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  RoomActivi copyWith({String? id, TemporalDateTime? lastSeen, String? userId, String? roomId}) {
    return RoomActivi(
      id: id ?? this.id,
      lastSeen: lastSeen ?? this.lastSeen,
      userId: userId ?? this.userId,
      roomId: roomId ?? this.roomId);
  }
  
  RoomActivi.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _lastSeen = json['lastSeen'] != null ? TemporalDateTime.fromString(json['lastSeen']) : null,
      _userId = json['userId'],
      _roomId = json['roomId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'lastSeen': _lastSeen?.format(), 'userId': _userId, 'roomId': _roomId
  };

  static final QueryField ID = QueryField(fieldName: "roomActivi.id");
  static final QueryField LASTSEEN = QueryField(fieldName: "lastSeen");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField ROOMID = QueryField(fieldName: "roomId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "RoomActivi";
    modelSchemaDefinition.pluralName = "RoomActivis";
    
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
      key: RoomActivi.LASTSEEN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivi.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RoomActivi.ROOMID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _RoomActiviModelType extends ModelType<RoomActivi> {
  const _RoomActiviModelType();
  
  @override
  RoomActivi fromJson(Map<String, dynamic> jsonData) {
    return RoomActivi.fromJson(jsonData);
  }
}