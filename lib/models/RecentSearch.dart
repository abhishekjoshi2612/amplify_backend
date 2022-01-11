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


/** This is an auto generated class representing the RecentSearch type in your schema. */
@immutable
class RecentSearch extends Model {
  static const classType = const _RecentSearchModelType();
  final String id;
  final String? _userId;
  final String? _searchQuery;
  final TemporalDateTime? _createdAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get userId {
    try {
      return _userId!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get searchQuery {
    return _searchQuery;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  const RecentSearch._internal({required this.id, required userId, searchQuery, createdAt}): _userId = userId, _searchQuery = searchQuery, _createdAt = createdAt;
  
  factory RecentSearch({String? id, required String userId, String? searchQuery, TemporalDateTime? createdAt}) {
    return RecentSearch._internal(
      id: id == null ? UUID.getUUID() : id,
      userId: userId,
      searchQuery: searchQuery,
      createdAt: createdAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecentSearch &&
      id == other.id &&
      _userId == other._userId &&
      _searchQuery == other._searchQuery &&
      _createdAt == other._createdAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("RecentSearch {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userId=" + "$_userId" + ", ");
    buffer.write("searchQuery=" + "$_searchQuery" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  RecentSearch copyWith({String? id, String? userId, String? searchQuery, TemporalDateTime? createdAt}) {
    return RecentSearch(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      searchQuery: searchQuery ?? this.searchQuery,
      createdAt: createdAt ?? this.createdAt);
  }
  
  RecentSearch.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userId = json['userId'],
      _searchQuery = json['searchQuery'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userId': _userId, 'searchQuery': _searchQuery, 'createdAt': _createdAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "recentSearch.id");
  static final QueryField USERID = QueryField(fieldName: "userId");
  static final QueryField SEARCHQUERY = QueryField(fieldName: "searchQuery");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "RecentSearch";
    modelSchemaDefinition.pluralName = "RecentSearches";
    
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
      key: RecentSearch.USERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RecentSearch.SEARCHQUERY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: RecentSearch.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RecentSearchModelType extends ModelType<RecentSearch> {
  const _RecentSearchModelType();
  
  @override
  RecentSearch fromJson(Map<String, dynamic> jsonData) {
    return RecentSearch.fromJson(jsonData);
  }
}