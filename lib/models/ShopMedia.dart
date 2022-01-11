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


/** This is an auto generated class representing the ShopMedia type in your schema. */
@immutable
class ShopMedia extends Model {
  static const classType = const _ShopMediaModelType();
  final String id;
  final String? _fileName;
  final String? _size;
  final String? _fileUrl;
  final String? _duration;
  final String? _streamSourceLocation;
  final String? _shopmasterID;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get fileName {
    return _fileName;
  }
  
  String? get size {
    return _size;
  }
  
  String? get fileUrl {
    return _fileUrl;
  }
  
  String? get duration {
    return _duration;
  }
  
  String? get streamSourceLocation {
    return _streamSourceLocation;
  }
  
  String? get shopmasterID {
    return _shopmasterID;
  }
  
  const ShopMedia._internal({required this.id, fileName, size, fileUrl, duration, streamSourceLocation, shopmasterID}): _fileName = fileName, _size = size, _fileUrl = fileUrl, _duration = duration, _streamSourceLocation = streamSourceLocation, _shopmasterID = shopmasterID;
  
  factory ShopMedia({String? id, String? fileName, String? size, String? fileUrl, String? duration, String? streamSourceLocation, String? shopmasterID}) {
    return ShopMedia._internal(
      id: id == null ? UUID.getUUID() : id,
      fileName: fileName,
      size: size,
      fileUrl: fileUrl,
      duration: duration,
      streamSourceLocation: streamSourceLocation,
      shopmasterID: shopmasterID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopMedia &&
      id == other.id &&
      _fileName == other._fileName &&
      _size == other._size &&
      _fileUrl == other._fileUrl &&
      _duration == other._duration &&
      _streamSourceLocation == other._streamSourceLocation &&
      _shopmasterID == other._shopmasterID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopMedia {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fileName=" + "$_fileName" + ", ");
    buffer.write("size=" + "$_size" + ", ");
    buffer.write("fileUrl=" + "$_fileUrl" + ", ");
    buffer.write("duration=" + "$_duration" + ", ");
    buffer.write("streamSourceLocation=" + "$_streamSourceLocation" + ", ");
    buffer.write("shopmasterID=" + "$_shopmasterID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopMedia copyWith({String? id, String? fileName, String? size, String? fileUrl, String? duration, String? streamSourceLocation, String? shopmasterID}) {
    return ShopMedia(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      size: size ?? this.size,
      fileUrl: fileUrl ?? this.fileUrl,
      duration: duration ?? this.duration,
      streamSourceLocation: streamSourceLocation ?? this.streamSourceLocation,
      shopmasterID: shopmasterID ?? this.shopmasterID);
  }
  
  ShopMedia.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fileName = json['fileName'],
      _size = json['size'],
      _fileUrl = json['fileUrl'],
      _duration = json['duration'],
      _streamSourceLocation = json['streamSourceLocation'],
      _shopmasterID = json['shopmasterID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fileName': _fileName, 'size': _size, 'fileUrl': _fileUrl, 'duration': _duration, 'streamSourceLocation': _streamSourceLocation, 'shopmasterID': _shopmasterID
  };

  static final QueryField ID = QueryField(fieldName: "shopMedia.id");
  static final QueryField FILENAME = QueryField(fieldName: "fileName");
  static final QueryField SIZE = QueryField(fieldName: "size");
  static final QueryField FILEURL = QueryField(fieldName: "fileUrl");
  static final QueryField DURATION = QueryField(fieldName: "duration");
  static final QueryField STREAMSOURCELOCATION = QueryField(fieldName: "streamSourceLocation");
  static final QueryField SHOPMASTERID = QueryField(fieldName: "shopmasterID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopMedia";
    modelSchemaDefinition.pluralName = "ShopMedias";
    
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
      key: ShopMedia.FILENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMedia.SIZE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMedia.FILEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMedia.DURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMedia.STREAMSOURCELOCATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopMedia.SHOPMASTERID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ShopMediaModelType extends ModelType<ShopMedia> {
  const _ShopMediaModelType();
  
  @override
  ShopMedia fromJson(Map<String, dynamic> jsonData) {
    return ShopMedia.fromJson(jsonData);
  }
}