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


/** This is an auto generated class representing the MediaType type in your schema. */
@immutable
class MediaType extends Model {
  static const classType = const _MediaTypeModelType();
  final String id;
  final String? _mediaName;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get mediaName {
    return _mediaName;
  }
  
  const MediaType._internal({required this.id, mediaName}): _mediaName = mediaName;
  
  factory MediaType({String? id, String? mediaName}) {
    return MediaType._internal(
      id: id == null ? UUID.getUUID() : id,
      mediaName: mediaName);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaType &&
      id == other.id &&
      _mediaName == other._mediaName;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MediaType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("mediaName=" + "$_mediaName");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MediaType copyWith({String? id, String? mediaName}) {
    return MediaType(
      id: id ?? this.id,
      mediaName: mediaName ?? this.mediaName);
  }
  
  MediaType.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _mediaName = json['mediaName'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'mediaName': _mediaName
  };

  static final QueryField ID = QueryField(fieldName: "mediaType.id");
  static final QueryField MEDIANAME = QueryField(fieldName: "mediaName");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MediaType";
    modelSchemaDefinition.pluralName = "MediaTypes";
    
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
      key: MediaType.MEDIANAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _MediaTypeModelType extends ModelType<MediaType> {
  const _MediaTypeModelType();
  
  @override
  MediaType fromJson(Map<String, dynamic> jsonData) {
    return MediaType.fromJson(jsonData);
  }
}