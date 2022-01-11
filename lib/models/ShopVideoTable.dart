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


/** This is an auto generated class representing the ShopVideoTable type in your schema. */
@immutable
class ShopVideoTable extends Model {
  static const classType = const _ShopVideoTableModelType();
  final String id;
  final String? _shopId;
  final String? _videoName;
  final TemporalDateTime? _createdTimeStamp;
  final String? _inputBucketUrl;
  final String? _outputBucketUrl;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get shopId {
    try {
      return _shopId!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get videoName {
    return _videoName;
  }
  
  TemporalDateTime? get createdTimeStamp {
    return _createdTimeStamp;
  }
  
  String? get inputBucketUrl {
    return _inputBucketUrl;
  }
  
  String? get outputBucketUrl {
    return _outputBucketUrl;
  }
  
  const ShopVideoTable._internal({required this.id, required shopId, videoName, createdTimeStamp, inputBucketUrl, outputBucketUrl}): _shopId = shopId, _videoName = videoName, _createdTimeStamp = createdTimeStamp, _inputBucketUrl = inputBucketUrl, _outputBucketUrl = outputBucketUrl;
  
  factory ShopVideoTable({String? id, required String shopId, String? videoName, TemporalDateTime? createdTimeStamp, String? inputBucketUrl, String? outputBucketUrl}) {
    return ShopVideoTable._internal(
      id: id == null ? UUID.getUUID() : id,
      shopId: shopId,
      videoName: videoName,
      createdTimeStamp: createdTimeStamp,
      inputBucketUrl: inputBucketUrl,
      outputBucketUrl: outputBucketUrl);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopVideoTable &&
      id == other.id &&
      _shopId == other._shopId &&
      _videoName == other._videoName &&
      _createdTimeStamp == other._createdTimeStamp &&
      _inputBucketUrl == other._inputBucketUrl &&
      _outputBucketUrl == other._outputBucketUrl;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ShopVideoTable {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("shopId=" + "$_shopId" + ", ");
    buffer.write("videoName=" + "$_videoName" + ", ");
    buffer.write("createdTimeStamp=" + (_createdTimeStamp != null ? _createdTimeStamp!.format() : "null") + ", ");
    buffer.write("inputBucketUrl=" + "$_inputBucketUrl" + ", ");
    buffer.write("outputBucketUrl=" + "$_outputBucketUrl");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ShopVideoTable copyWith({String? id, String? shopId, String? videoName, TemporalDateTime? createdTimeStamp, String? inputBucketUrl, String? outputBucketUrl}) {
    return ShopVideoTable(
      id: id ?? this.id,
      shopId: shopId ?? this.shopId,
      videoName: videoName ?? this.videoName,
      createdTimeStamp: createdTimeStamp ?? this.createdTimeStamp,
      inputBucketUrl: inputBucketUrl ?? this.inputBucketUrl,
      outputBucketUrl: outputBucketUrl ?? this.outputBucketUrl);
  }
  
  ShopVideoTable.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _shopId = json['shopId'],
      _videoName = json['videoName'],
      _createdTimeStamp = json['createdTimeStamp'] != null ? TemporalDateTime.fromString(json['createdTimeStamp']) : null,
      _inputBucketUrl = json['inputBucketUrl'],
      _outputBucketUrl = json['outputBucketUrl'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'shopId': _shopId, 'videoName': _videoName, 'createdTimeStamp': _createdTimeStamp?.format(), 'inputBucketUrl': _inputBucketUrl, 'outputBucketUrl': _outputBucketUrl
  };

  static final QueryField ID = QueryField(fieldName: "shopVideoTable.id");
  static final QueryField SHOPID = QueryField(fieldName: "shopId");
  static final QueryField VIDEONAME = QueryField(fieldName: "videoName");
  static final QueryField CREATEDTIMESTAMP = QueryField(fieldName: "createdTimeStamp");
  static final QueryField INPUTBUCKETURL = QueryField(fieldName: "inputBucketUrl");
  static final QueryField OUTPUTBUCKETURL = QueryField(fieldName: "outputBucketUrl");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ShopVideoTable";
    modelSchemaDefinition.pluralName = "ShopVideoTables";
    
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
      key: ShopVideoTable.SHOPID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopVideoTable.VIDEONAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopVideoTable.CREATEDTIMESTAMP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopVideoTable.INPUTBUCKETURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ShopVideoTable.OUTPUTBUCKETURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ShopVideoTableModelType extends ModelType<ShopVideoTable> {
  const _ShopVideoTableModelType();
  
  @override
  ShopVideoTable fromJson(Map<String, dynamic> jsonData) {
    return ShopVideoTable.fromJson(jsonData);
  }
}