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


/** This is an auto generated class representing the UserMasterRoom type in your schema. */
@immutable
class UserMasterRoom extends Model {
  static const classType = const _UserMasterRoomModelType();
  final String id;
  final UserMaster? _usermaster;
  final Room? _room;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  UserMaster get usermaster {
    try {
      return _usermaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  Room get room {
    try {
      return _room!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const UserMasterRoom._internal({required this.id, required usermaster, required room}): _usermaster = usermaster, _room = room;
  
  factory UserMasterRoom({String? id, required UserMaster usermaster, required Room room}) {
    return UserMasterRoom._internal(
      id: id == null ? UUID.getUUID() : id,
      usermaster: usermaster,
      room: room);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMasterRoom &&
      id == other.id &&
      _usermaster == other._usermaster &&
      _room == other._room;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserMasterRoom {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usermaster=" + (_usermaster != null ? _usermaster!.toString() : "null") + ", ");
    buffer.write("room=" + (_room != null ? _room!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserMasterRoom copyWith({String? id, UserMaster? usermaster, Room? room}) {
    return UserMasterRoom(
      id: id ?? this.id,
      usermaster: usermaster ?? this.usermaster,
      room: room ?? this.room);
  }
  
  UserMasterRoom.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usermaster = json['usermaster']?['serializedData'] != null
        ? UserMaster.fromJson(new Map<String, dynamic>.from(json['usermaster']['serializedData']))
        : null,
      _room = json['room']?['serializedData'] != null
        ? Room.fromJson(new Map<String, dynamic>.from(json['room']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usermaster': _usermaster?.toJson(), 'room': _room?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "userMasterRoom.id");
  static final QueryField USERMASTER = QueryField(
    fieldName: "usermaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMaster).toString()));
  static final QueryField ROOM = QueryField(
    fieldName: "room",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Room).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserMasterRoom";
    modelSchemaDefinition.pluralName = "UserMasterRooms";
    
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
      key: UserMasterRoom.USERMASTER,
      isRequired: true,
      targetName: "usermasterID",
      ofModelName: (UserMaster).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: UserMasterRoom.ROOM,
      isRequired: true,
      targetName: "roomID",
      ofModelName: (Room).toString()
    ));
  });
}

class _UserMasterRoomModelType extends ModelType<UserMasterRoom> {
  const _UserMasterRoomModelType();
  
  @override
  UserMasterRoom fromJson(Map<String, dynamic> jsonData) {
    return UserMasterRoom.fromJson(jsonData);
  }
}