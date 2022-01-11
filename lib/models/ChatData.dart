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


/** This is an auto generated class representing the ChatData type in your schema. */
@immutable
class ChatData extends Model {
  static const classType = const _ChatDataModelType();
  final String id;
  final String? _message;
  final TemporalDateTime? _createdAt;
  final String? _FileUrl;
  final MessageType? _type;
  final String? _sentBy;
  final String? _roomId;
  final Room? _room;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get message {
    return _message;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  String? get FileUrl {
    return _FileUrl;
  }
  
  MessageType? get type {
    return _type;
  }
  
  String get sentBy {
    try {
      return _sentBy!;
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
  
  Room? get room {
    return _room;
  }
  
  const ChatData._internal({required this.id, message, createdAt, FileUrl, type, required sentBy, required roomId, room}): _message = message, _createdAt = createdAt, _FileUrl = FileUrl, _type = type, _sentBy = sentBy, _roomId = roomId, _room = room;
  
  factory ChatData({String? id, String? message, TemporalDateTime? createdAt, String? FileUrl, MessageType? type, required String sentBy, required String roomId, Room? room}) {
    return ChatData._internal(
      id: id == null ? UUID.getUUID() : id,
      message: message,
      createdAt: createdAt,
      FileUrl: FileUrl,
      type: type,
      sentBy: sentBy,
      roomId: roomId,
      room: room);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatData &&
      id == other.id &&
      _message == other._message &&
      _createdAt == other._createdAt &&
      _FileUrl == other._FileUrl &&
      _type == other._type &&
      _sentBy == other._sentBy &&
      _roomId == other._roomId &&
      _room == other._room;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ChatData {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("FileUrl=" + "$_FileUrl" + ", ");
    buffer.write("type=" + (_type != null ? enumToString(_type)! : "null") + ", ");
    buffer.write("sentBy=" + "$_sentBy" + ", ");
    buffer.write("roomId=" + "$_roomId" + ", ");
    buffer.write("room=" + (_room != null ? _room!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ChatData copyWith({String? id, String? message, TemporalDateTime? createdAt, String? FileUrl, MessageType? type, String? sentBy, String? roomId, Room? room}) {
    return ChatData(
      id: id ?? this.id,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
      FileUrl: FileUrl ?? this.FileUrl,
      type: type ?? this.type,
      sentBy: sentBy ?? this.sentBy,
      roomId: roomId ?? this.roomId,
      room: room ?? this.room);
  }
  
  ChatData.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _message = json['message'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _FileUrl = json['FileUrl'],
      _type = enumFromString<MessageType>(json['type'], MessageType.values),
      _sentBy = json['sentBy'],
      _roomId = json['roomId'],
      _room = json['room']?['serializedData'] != null
        ? Room.fromJson(new Map<String, dynamic>.from(json['room']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'message': _message, 'createdAt': _createdAt?.format(), 'FileUrl': _FileUrl, 'type': enumToString(_type), 'sentBy': _sentBy, 'roomId': _roomId, 'room': _room?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "chatData.id");
  static final QueryField MESSAGE = QueryField(fieldName: "message");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField FILEURL = QueryField(fieldName: "FileUrl");
  static final QueryField TYPE = QueryField(fieldName: "type");
  static final QueryField SENTBY = QueryField(fieldName: "sentBy");
  static final QueryField ROOMID = QueryField(fieldName: "roomId");
  static final QueryField ROOM = QueryField(
    fieldName: "room",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Room).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ChatData";
    modelSchemaDefinition.pluralName = "ChatData";
    
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
      key: ChatData.MESSAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatData.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatData.FILEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatData.TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatData.SENTBY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ChatData.ROOMID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ChatData.ROOM,
      isRequired: false,
      targetName: "chatDataRoomId",
      ofModelName: (Room).toString()
    ));
  });
}

class _ChatDataModelType extends ModelType<ChatData> {
  const _ChatDataModelType();
  
  @override
  ChatData fromJson(Map<String, dynamic> jsonData) {
    return ChatData.fromJson(jsonData);
  }
}