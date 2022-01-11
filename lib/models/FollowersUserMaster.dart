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


/** This is an auto generated class representing the FollowersUserMaster type in your schema. */
@immutable
class FollowersUserMaster extends Model {
  static const classType = const _FollowersUserMasterModelType();
  final String id;
  final Followers? _followers;
  final UserMaster? _usermaster;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Followers get followers {
    try {
      return _followers!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  UserMaster get usermaster {
    try {
      return _usermaster!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const FollowersUserMaster._internal({required this.id, required followers, required usermaster}): _followers = followers, _usermaster = usermaster;
  
  factory FollowersUserMaster({String? id, required Followers followers, required UserMaster usermaster}) {
    return FollowersUserMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      followers: followers,
      usermaster: usermaster);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowersUserMaster &&
      id == other.id &&
      _followers == other._followers &&
      _usermaster == other._usermaster;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FollowersUserMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("followers=" + (_followers != null ? _followers!.toString() : "null") + ", ");
    buffer.write("usermaster=" + (_usermaster != null ? _usermaster!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FollowersUserMaster copyWith({String? id, Followers? followers, UserMaster? usermaster}) {
    return FollowersUserMaster(
      id: id ?? this.id,
      followers: followers ?? this.followers,
      usermaster: usermaster ?? this.usermaster);
  }
  
  FollowersUserMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _followers = json['followers']?['serializedData'] != null
        ? Followers.fromJson(new Map<String, dynamic>.from(json['followers']['serializedData']))
        : null,
      _usermaster = json['usermaster']?['serializedData'] != null
        ? UserMaster.fromJson(new Map<String, dynamic>.from(json['usermaster']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'followers': _followers?.toJson(), 'usermaster': _usermaster?.toJson()
  };

  static final QueryField ID = QueryField(fieldName: "followersUserMaster.id");
  static final QueryField FOLLOWERS = QueryField(
    fieldName: "followers",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Followers).toString()));
  static final QueryField USERMASTER = QueryField(
    fieldName: "usermaster",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMaster).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FollowersUserMaster";
    modelSchemaDefinition.pluralName = "FollowersUserMasters";
    
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
      key: FollowersUserMaster.FOLLOWERS,
      isRequired: true,
      targetName: "followersID",
      ofModelName: (Followers).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: FollowersUserMaster.USERMASTER,
      isRequired: true,
      targetName: "usermasterID",
      ofModelName: (UserMaster).toString()
    ));
  });
}

class _FollowersUserMasterModelType extends ModelType<FollowersUserMaster> {
  const _FollowersUserMasterModelType();
  
  @override
  FollowersUserMaster fromJson(Map<String, dynamic> jsonData) {
    return FollowersUserMaster.fromJson(jsonData);
  }
}