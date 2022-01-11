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


/** This is an auto generated class representing the Room type in your schema. */
@immutable
class Room extends Model {
  static const classType = const _RoomModelType();
  final String id;
  final String? _name;
  final bool? _is_group_chat;
  final TemporalDateTime? _createdAt;
  final List<String>? _UserMasterMail;
  final List<String>? _participants;
  final String? _created_by;
  final List<UserMasterRoom>? _usermasters;
  final List<RoomActivity>? _roomActivities;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get name {
    return _name;
  }
  
  bool? get is_group_chat {
    return _is_group_chat;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  List<String>? get UserMasterMail {
    return _UserMasterMail;
  }
  
  List<String>? get participants {
    return _participants;
  }
  
  String get created_by {
    try {
      return _created_by!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  List<UserMasterRoom>? get usermasters {
    return _usermasters;
  }
  
  List<RoomActivity>? get roomActivities {
    return _roomActivities;
  }
  
  const Room._internal({required this.id, name, is_group_chat, createdAt, UserMasterMail, participants, required created_by, usermasters, roomActivities}): _name = name, _is_group_chat = is_group_chat, _createdAt = createdAt, _UserMasterMail = UserMasterMail, _participants = participants, _created_by = created_by, _usermasters = usermasters, _roomActivities = roomActivities;
  
  factory Room({String? id, String? name, bool? is_group_chat, TemporalDateTime? createdAt, List<String>? UserMasterMail, List<String>? participants, required String created_by, List<UserMasterRoom>? usermasters, List<RoomActivity>? roomActivities}) {
    return Room._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      is_group_chat: is_group_chat,
      createdAt: createdAt,
      UserMasterMail: UserMasterMail != null ? List<String>.unmodifiable(UserMasterMail) : UserMasterMail,
      participants: participants != null ? List<String>.unmodifiable(participants) : participants,
      created_by: created_by,
      usermasters: usermasters != null ? List<UserMasterRoom>.unmodifiable(usermasters) : usermasters,
      roomActivities: roomActivities != null ? List<RoomActivity>.unmodifiable(roomActivities) : roomActivities);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
      id == other.id &&
      _name == other._name &&
      _is_group_chat == other._is_group_chat &&
      _createdAt == other._createdAt &&
      DeepCollectionEquality().equals(_UserMasterMail, other._UserMasterMail) &&
      DeepCollectionEquality().equals(_participants, other._participants) &&
      _created_by == other._created_by &&
      DeepCollectionEquality().equals(_usermasters, other._usermasters) &&
      DeepCollectionEquality().equals(_roomActivities, other._roomActivities);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Room {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("is_group_chat=" + (_is_group_chat != null ? _is_group_chat!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("UserMasterMail=" + (_UserMasterMail != null ? _UserMasterMail!.toString() : "null") + ", ");
    buffer.write("participants=" + (_participants != null ? _participants!.toString() : "null") + ", ");
    buffer.write("created_by=" + "$_created_by");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Room copyWith({String? id, String? name, bool? is_group_chat, TemporalDateTime? createdAt, List<String>? UserMasterMail, List<String>? participants, String? created_by, List<UserMasterRoom>? usermasters, List<RoomActivity>? roomActivities}) {
    return Room(
      id: id ?? this.id,
      name: name ?? this.name,
      is_group_chat: is_group_chat ?? this.is_group_chat,
      createdAt: createdAt ?? this.createdAt,
      UserMasterMail: UserMasterMail ?? this.UserMasterMail,
      participants: participants ?? this.participants,
      created_by: created_by ?? this.created_by,
      usermasters: usermasters ?? this.usermasters,
      roomActivities: roomActivities ?? this.roomActivities);
  }
  
  Room.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _is_group_chat = json['is_group_chat'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _UserMasterMail = json['UserMasterMail']?.cast<String>(),
      _participants = json['participants']?.cast<String>(),
      _created_by = json['created_by'],
      _usermasters = json['usermasters'] is List
        ? (json['usermasters'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserMasterRoom.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _roomActivities = json['roomActivities'] is List
        ? (json['roomActivities'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => RoomActivity.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'is_group_chat': _is_group_chat, 'createdAt': _createdAt?.format(), 'UserMasterMail': _UserMasterMail, 'participants': _participants, 'created_by': _created_by, 'usermasters': _usermasters?.map((UserMasterRoom? e) => e?.toJson()).toList(), 'roomActivities': _roomActivities?.map((RoomActivity? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "room.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IS_GROUP_CHAT = QueryField(fieldName: "is_group_chat");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField USERMASTERMAIL = QueryField(fieldName: "UserMasterMail");
  static final QueryField PARTICIPANTS = QueryField(fieldName: "participants");
  static final QueryField CREATED_BY = QueryField(fieldName: "created_by");
  static final QueryField USERMASTERS = QueryField(
    fieldName: "usermasters",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMasterRoom).toString()));
  static final QueryField ROOMACTIVITIES = QueryField(
    fieldName: "roomActivities",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (RoomActivity).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Room";
    modelSchemaDefinition.pluralName = "Rooms";
    
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
      key: Room.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Room.IS_GROUP_CHAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Room.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Room.USERMASTERMAIL,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Room.PARTICIPANTS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Room.CREATED_BY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Room.USERMASTERS,
      isRequired: false,
      ofModelName: (UserMasterRoom).toString(),
      associatedKey: UserMasterRoom.ROOM
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Room.ROOMACTIVITIES,
      isRequired: false,
      ofModelName: (RoomActivity).toString(),
      associatedKey: RoomActivity.ROOMID
    ));
  });
}

class _RoomModelType extends ModelType<Room> {
  const _RoomModelType();
  
  @override
  Room fromJson(Map<String, dynamic> jsonData) {
    return Room.fromJson(jsonData);
  }
}