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


/** This is an auto generated class representing the UserMaster type in your schema. */
@immutable
class UserMaster extends Model {
  static const classType = const _UserMasterModelType();
  final String id;
  final String? _firstName;
  final String? _middleName;
  final String? _lastName;
  final String? _email;
  final String? _gmail;
  final String? _facebook;
  final String? _password;
  final String? _socialMediaType;
  final String? _socialMediaHandle;
  final String? _profilePicUrl;
  final String? _mobileNumber;
  final String? _lastSeen;
  final String? _voiceCallReadyness;
  final String? _videoCallReadyness;
  final String? _isEmailVerified;
  final String? _isPhoneVerified;
  final String? _socialMediaLogin;
  final String? _messageReadyness;
  final String? _deviceId;
  final List<ShopMaster>? _UserShopRelation;
  final List<UserMasterProductMaster>? _UserMasterProductMastersLikeRelationship;
  final List<UserProductReview>? _UserProductComments;
  final String? _bio;
  final String? _username;
  final bool? _isVerified;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _Gender;
  final String? _StreetAddress;
  final String? _City;
  final String? _State;
  final String? _PinCode;
  final List<Preferences>? _UserMasterPrefer;
  final List<UserShopReview>? _UserShopReviews;
  final List<UserMasterRoom>? _Rooms;
  final List<RoomActivity>? _RoomActivities;
  final List<Followers>? _shopsFollowing;
  final List<FollowersUserMaster>? _followerss;
  final List<UserActivity>? _UserActivities;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get firstName {
    return _firstName;
  }
  
  String? get middleName {
    return _middleName;
  }
  
  String? get lastName {
    return _lastName;
  }
  
  String? get email {
    return _email;
  }
  
  String? get gmail {
    return _gmail;
  }
  
  String? get facebook {
    return _facebook;
  }
  
  String? get password {
    return _password;
  }
  
  String? get socialMediaType {
    return _socialMediaType;
  }
  
  String? get socialMediaHandle {
    return _socialMediaHandle;
  }
  
  String? get profilePicUrl {
    return _profilePicUrl;
  }
  
  String? get mobileNumber {
    return _mobileNumber;
  }
  
  String? get lastSeen {
    return _lastSeen;
  }
  
  String? get voiceCallReadyness {
    return _voiceCallReadyness;
  }
  
  String? get videoCallReadyness {
    return _videoCallReadyness;
  }
  
  String? get isEmailVerified {
    return _isEmailVerified;
  }
  
  String? get isPhoneVerified {
    return _isPhoneVerified;
  }
  
  String? get socialMediaLogin {
    return _socialMediaLogin;
  }
  
  String? get messageReadyness {
    return _messageReadyness;
  }
  
  String? get deviceId {
    return _deviceId;
  }
  
  List<ShopMaster>? get UserShopRelation {
    return _UserShopRelation;
  }
  
  List<UserMasterProductMaster>? get UserMasterProductMastersLikeRelationship {
    return _UserMasterProductMastersLikeRelationship;
  }
  
  List<UserProductReview>? get UserProductComments {
    return _UserProductComments;
  }
  
  String? get bio {
    return _bio;
  }
  
  String? get username {
    return _username;
  }
  
  bool? get isVerified {
    return _isVerified;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get Gender {
    return _Gender;
  }
  
  String? get StreetAddress {
    return _StreetAddress;
  }
  
  String? get City {
    return _City;
  }
  
  String? get State {
    return _State;
  }
  
  String? get PinCode {
    return _PinCode;
  }
  
  List<Preferences>? get UserMasterPrefer {
    return _UserMasterPrefer;
  }
  
  List<UserShopReview>? get UserShopReviews {
    return _UserShopReviews;
  }
  
  List<UserMasterRoom>? get Rooms {
    return _Rooms;
  }
  
  List<RoomActivity>? get RoomActivities {
    return _RoomActivities;
  }
  
  List<Followers>? get shopsFollowing {
    return _shopsFollowing;
  }
  
  List<FollowersUserMaster>? get followerss {
    return _followerss;
  }
  
  List<UserActivity>? get UserActivities {
    return _UserActivities;
  }
  
  const UserMaster._internal({required this.id, firstName, middleName, lastName, email, gmail, facebook, password, socialMediaType, socialMediaHandle, profilePicUrl, mobileNumber, lastSeen, voiceCallReadyness, videoCallReadyness, isEmailVerified, isPhoneVerified, socialMediaLogin, messageReadyness, deviceId, UserShopRelation, UserMasterProductMastersLikeRelationship, UserProductComments, bio, username, isVerified, createdAt, updatedAt, Gender, StreetAddress, City, State, PinCode, UserMasterPrefer, UserShopReviews, Rooms, RoomActivities, shopsFollowing, followerss, UserActivities}): _firstName = firstName, _middleName = middleName, _lastName = lastName, _email = email, _gmail = gmail, _facebook = facebook, _password = password, _socialMediaType = socialMediaType, _socialMediaHandle = socialMediaHandle, _profilePicUrl = profilePicUrl, _mobileNumber = mobileNumber, _lastSeen = lastSeen, _voiceCallReadyness = voiceCallReadyness, _videoCallReadyness = videoCallReadyness, _isEmailVerified = isEmailVerified, _isPhoneVerified = isPhoneVerified, _socialMediaLogin = socialMediaLogin, _messageReadyness = messageReadyness, _deviceId = deviceId, _UserShopRelation = UserShopRelation, _UserMasterProductMastersLikeRelationship = UserMasterProductMastersLikeRelationship, _UserProductComments = UserProductComments, _bio = bio, _username = username, _isVerified = isVerified, _createdAt = createdAt, _updatedAt = updatedAt, _Gender = Gender, _StreetAddress = StreetAddress, _City = City, _State = State, _PinCode = PinCode, _UserMasterPrefer = UserMasterPrefer, _UserShopReviews = UserShopReviews, _Rooms = Rooms, _RoomActivities = RoomActivities, _shopsFollowing = shopsFollowing, _followerss = followerss, _UserActivities = UserActivities;
  
  factory UserMaster({String? id, String? firstName, String? middleName, String? lastName, String? email, String? gmail, String? facebook, String? password, String? socialMediaType, String? socialMediaHandle, String? profilePicUrl, String? mobileNumber, String? lastSeen, String? voiceCallReadyness, String? videoCallReadyness, String? isEmailVerified, String? isPhoneVerified, String? socialMediaLogin, String? messageReadyness, String? deviceId, List<ShopMaster>? UserShopRelation, List<UserMasterProductMaster>? UserMasterProductMastersLikeRelationship, List<UserProductReview>? UserProductComments, String? bio, String? username, bool? isVerified, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? Gender, String? StreetAddress, String? City, String? State, String? PinCode, List<Preferences>? UserMasterPrefer, List<UserShopReview>? UserShopReviews, List<UserMasterRoom>? Rooms, List<RoomActivity>? RoomActivities, List<Followers>? shopsFollowing, List<FollowersUserMaster>? followerss, List<UserActivity>? UserActivities}) {
    return UserMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      email: email,
      gmail: gmail,
      facebook: facebook,
      password: password,
      socialMediaType: socialMediaType,
      socialMediaHandle: socialMediaHandle,
      profilePicUrl: profilePicUrl,
      mobileNumber: mobileNumber,
      lastSeen: lastSeen,
      voiceCallReadyness: voiceCallReadyness,
      videoCallReadyness: videoCallReadyness,
      isEmailVerified: isEmailVerified,
      isPhoneVerified: isPhoneVerified,
      socialMediaLogin: socialMediaLogin,
      messageReadyness: messageReadyness,
      deviceId: deviceId,
      UserShopRelation: UserShopRelation != null ? List<ShopMaster>.unmodifiable(UserShopRelation) : UserShopRelation,
      UserMasterProductMastersLikeRelationship: UserMasterProductMastersLikeRelationship != null ? List<UserMasterProductMaster>.unmodifiable(UserMasterProductMastersLikeRelationship) : UserMasterProductMastersLikeRelationship,
      UserProductComments: UserProductComments != null ? List<UserProductReview>.unmodifiable(UserProductComments) : UserProductComments,
      bio: bio,
      username: username,
      isVerified: isVerified,
      createdAt: createdAt,
      updatedAt: updatedAt,
      Gender: Gender,
      StreetAddress: StreetAddress,
      City: City,
      State: State,
      PinCode: PinCode,
      UserMasterPrefer: UserMasterPrefer != null ? List<Preferences>.unmodifiable(UserMasterPrefer) : UserMasterPrefer,
      UserShopReviews: UserShopReviews != null ? List<UserShopReview>.unmodifiable(UserShopReviews) : UserShopReviews,
      Rooms: Rooms != null ? List<UserMasterRoom>.unmodifiable(Rooms) : Rooms,
      RoomActivities: RoomActivities != null ? List<RoomActivity>.unmodifiable(RoomActivities) : RoomActivities,
      shopsFollowing: shopsFollowing != null ? List<Followers>.unmodifiable(shopsFollowing) : shopsFollowing,
      followerss: followerss != null ? List<FollowersUserMaster>.unmodifiable(followerss) : followerss,
      UserActivities: UserActivities != null ? List<UserActivity>.unmodifiable(UserActivities) : UserActivities);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMaster &&
      id == other.id &&
      _firstName == other._firstName &&
      _middleName == other._middleName &&
      _lastName == other._lastName &&
      _email == other._email &&
      _gmail == other._gmail &&
      _facebook == other._facebook &&
      _password == other._password &&
      _socialMediaType == other._socialMediaType &&
      _socialMediaHandle == other._socialMediaHandle &&
      _profilePicUrl == other._profilePicUrl &&
      _mobileNumber == other._mobileNumber &&
      _lastSeen == other._lastSeen &&
      _voiceCallReadyness == other._voiceCallReadyness &&
      _videoCallReadyness == other._videoCallReadyness &&
      _isEmailVerified == other._isEmailVerified &&
      _isPhoneVerified == other._isPhoneVerified &&
      _socialMediaLogin == other._socialMediaLogin &&
      _messageReadyness == other._messageReadyness &&
      _deviceId == other._deviceId &&
      DeepCollectionEquality().equals(_UserShopRelation, other._UserShopRelation) &&
      DeepCollectionEquality().equals(_UserMasterProductMastersLikeRelationship, other._UserMasterProductMastersLikeRelationship) &&
      DeepCollectionEquality().equals(_UserProductComments, other._UserProductComments) &&
      _bio == other._bio &&
      _username == other._username &&
      _isVerified == other._isVerified &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt &&
      _Gender == other._Gender &&
      _StreetAddress == other._StreetAddress &&
      _City == other._City &&
      _State == other._State &&
      _PinCode == other._PinCode &&
      DeepCollectionEquality().equals(_UserMasterPrefer, other._UserMasterPrefer) &&
      DeepCollectionEquality().equals(_UserShopReviews, other._UserShopReviews) &&
      DeepCollectionEquality().equals(_Rooms, other._Rooms) &&
      DeepCollectionEquality().equals(_RoomActivities, other._RoomActivities) &&
      DeepCollectionEquality().equals(_shopsFollowing, other._shopsFollowing) &&
      DeepCollectionEquality().equals(_followerss, other._followerss) &&
      DeepCollectionEquality().equals(_UserActivities, other._UserActivities);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("middleName=" + "$_middleName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("gmail=" + "$_gmail" + ", ");
    buffer.write("facebook=" + "$_facebook" + ", ");
    buffer.write("password=" + "$_password" + ", ");
    buffer.write("socialMediaType=" + "$_socialMediaType" + ", ");
    buffer.write("socialMediaHandle=" + "$_socialMediaHandle" + ", ");
    buffer.write("profilePicUrl=" + "$_profilePicUrl" + ", ");
    buffer.write("mobileNumber=" + "$_mobileNumber" + ", ");
    buffer.write("lastSeen=" + "$_lastSeen" + ", ");
    buffer.write("voiceCallReadyness=" + "$_voiceCallReadyness" + ", ");
    buffer.write("videoCallReadyness=" + "$_videoCallReadyness" + ", ");
    buffer.write("isEmailVerified=" + "$_isEmailVerified" + ", ");
    buffer.write("isPhoneVerified=" + "$_isPhoneVerified" + ", ");
    buffer.write("socialMediaLogin=" + "$_socialMediaLogin" + ", ");
    buffer.write("messageReadyness=" + "$_messageReadyness" + ", ");
    buffer.write("deviceId=" + "$_deviceId" + ", ");
    buffer.write("bio=" + "$_bio" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("isVerified=" + (_isVerified != null ? _isVerified!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("Gender=" + "$_Gender" + ", ");
    buffer.write("StreetAddress=" + "$_StreetAddress" + ", ");
    buffer.write("City=" + "$_City" + ", ");
    buffer.write("State=" + "$_State" + ", ");
    buffer.write("PinCode=" + "$_PinCode");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserMaster copyWith({String? id, String? firstName, String? middleName, String? lastName, String? email, String? gmail, String? facebook, String? password, String? socialMediaType, String? socialMediaHandle, String? profilePicUrl, String? mobileNumber, String? lastSeen, String? voiceCallReadyness, String? videoCallReadyness, String? isEmailVerified, String? isPhoneVerified, String? socialMediaLogin, String? messageReadyness, String? deviceId, List<ShopMaster>? UserShopRelation, List<UserMasterProductMaster>? UserMasterProductMastersLikeRelationship, List<UserProductReview>? UserProductComments, String? bio, String? username, bool? isVerified, TemporalDateTime? createdAt, TemporalDateTime? updatedAt, String? Gender, String? StreetAddress, String? City, String? State, String? PinCode, List<Preferences>? UserMasterPrefer, List<UserShopReview>? UserShopReviews, List<UserMasterRoom>? Rooms, List<RoomActivity>? RoomActivities, List<Followers>? shopsFollowing, List<FollowersUserMaster>? followerss, List<UserActivity>? UserActivities}) {
    return UserMaster(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gmail: gmail ?? this.gmail,
      facebook: facebook ?? this.facebook,
      password: password ?? this.password,
      socialMediaType: socialMediaType ?? this.socialMediaType,
      socialMediaHandle: socialMediaHandle ?? this.socialMediaHandle,
      profilePicUrl: profilePicUrl ?? this.profilePicUrl,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      lastSeen: lastSeen ?? this.lastSeen,
      voiceCallReadyness: voiceCallReadyness ?? this.voiceCallReadyness,
      videoCallReadyness: videoCallReadyness ?? this.videoCallReadyness,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
      socialMediaLogin: socialMediaLogin ?? this.socialMediaLogin,
      messageReadyness: messageReadyness ?? this.messageReadyness,
      deviceId: deviceId ?? this.deviceId,
      UserShopRelation: UserShopRelation ?? this.UserShopRelation,
      UserMasterProductMastersLikeRelationship: UserMasterProductMastersLikeRelationship ?? this.UserMasterProductMastersLikeRelationship,
      UserProductComments: UserProductComments ?? this.UserProductComments,
      bio: bio ?? this.bio,
      username: username ?? this.username,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      Gender: Gender ?? this.Gender,
      StreetAddress: StreetAddress ?? this.StreetAddress,
      City: City ?? this.City,
      State: State ?? this.State,
      PinCode: PinCode ?? this.PinCode,
      UserMasterPrefer: UserMasterPrefer ?? this.UserMasterPrefer,
      UserShopReviews: UserShopReviews ?? this.UserShopReviews,
      Rooms: Rooms ?? this.Rooms,
      RoomActivities: RoomActivities ?? this.RoomActivities,
      shopsFollowing: shopsFollowing ?? this.shopsFollowing,
      followerss: followerss ?? this.followerss,
      UserActivities: UserActivities ?? this.UserActivities);
  }
  
  UserMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _middleName = json['middleName'],
      _lastName = json['lastName'],
      _email = json['email'],
      _gmail = json['gmail'],
      _facebook = json['facebook'],
      _password = json['password'],
      _socialMediaType = json['socialMediaType'],
      _socialMediaHandle = json['socialMediaHandle'],
      _profilePicUrl = json['profilePicUrl'],
      _mobileNumber = json['mobileNumber'],
      _lastSeen = json['lastSeen'],
      _voiceCallReadyness = json['voiceCallReadyness'],
      _videoCallReadyness = json['videoCallReadyness'],
      _isEmailVerified = json['isEmailVerified'],
      _isPhoneVerified = json['isPhoneVerified'],
      _socialMediaLogin = json['socialMediaLogin'],
      _messageReadyness = json['messageReadyness'],
      _deviceId = json['deviceId'],
      _UserShopRelation = json['UserShopRelation'] is List
        ? (json['UserShopRelation'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ShopMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserMasterProductMastersLikeRelationship = json['UserMasterProductMastersLikeRelationship'] is List
        ? (json['UserMasterProductMastersLikeRelationship'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserMasterProductMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserProductComments = json['UserProductComments'] is List
        ? (json['UserProductComments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserProductReview.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _bio = json['bio'],
      _username = json['username'],
      _isVerified = json['isVerified'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _Gender = json['Gender'],
      _StreetAddress = json['StreetAddress'],
      _City = json['City'],
      _State = json['State'],
      _PinCode = json['PinCode'],
      _UserMasterPrefer = json['UserMasterPrefer'] is List
        ? (json['UserMasterPrefer'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Preferences.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserShopReviews = json['UserShopReviews'] is List
        ? (json['UserShopReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserShopReview.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Rooms = json['Rooms'] is List
        ? (json['Rooms'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserMasterRoom.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _RoomActivities = json['RoomActivities'] is List
        ? (json['RoomActivities'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => RoomActivity.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _shopsFollowing = json['shopsFollowing'] is List
        ? (json['shopsFollowing'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Followers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _followerss = json['followerss'] is List
        ? (json['followerss'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FollowersUserMaster.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _UserActivities = json['UserActivities'] is List
        ? (json['UserActivities'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UserActivity.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'middleName': _middleName, 'lastName': _lastName, 'email': _email, 'gmail': _gmail, 'facebook': _facebook, 'password': _password, 'socialMediaType': _socialMediaType, 'socialMediaHandle': _socialMediaHandle, 'profilePicUrl': _profilePicUrl, 'mobileNumber': _mobileNumber, 'lastSeen': _lastSeen, 'voiceCallReadyness': _voiceCallReadyness, 'videoCallReadyness': _videoCallReadyness, 'isEmailVerified': _isEmailVerified, 'isPhoneVerified': _isPhoneVerified, 'socialMediaLogin': _socialMediaLogin, 'messageReadyness': _messageReadyness, 'deviceId': _deviceId, 'UserShopRelation': _UserShopRelation?.map((ShopMaster? e) => e?.toJson()).toList(), 'UserMasterProductMastersLikeRelationship': _UserMasterProductMastersLikeRelationship?.map((UserMasterProductMaster? e) => e?.toJson()).toList(), 'UserProductComments': _UserProductComments?.map((UserProductReview? e) => e?.toJson()).toList(), 'bio': _bio, 'username': _username, 'isVerified': _isVerified, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'Gender': _Gender, 'StreetAddress': _StreetAddress, 'City': _City, 'State': _State, 'PinCode': _PinCode, 'UserMasterPrefer': _UserMasterPrefer?.map((Preferences? e) => e?.toJson()).toList(), 'UserShopReviews': _UserShopReviews?.map((UserShopReview? e) => e?.toJson()).toList(), 'Rooms': _Rooms?.map((UserMasterRoom? e) => e?.toJson()).toList(), 'RoomActivities': _RoomActivities?.map((RoomActivity? e) => e?.toJson()).toList(), 'shopsFollowing': _shopsFollowing?.map((Followers? e) => e?.toJson()).toList(), 'followerss': _followerss?.map((FollowersUserMaster? e) => e?.toJson()).toList(), 'UserActivities': _UserActivities?.map((UserActivity? e) => e?.toJson()).toList()
  };

  static final QueryField ID = QueryField(fieldName: "userMaster.id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField MIDDLENAME = QueryField(fieldName: "middleName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField GMAIL = QueryField(fieldName: "gmail");
  static final QueryField FACEBOOK = QueryField(fieldName: "facebook");
  static final QueryField PASSWORD = QueryField(fieldName: "password");
  static final QueryField SOCIALMEDIATYPE = QueryField(fieldName: "socialMediaType");
  static final QueryField SOCIALMEDIAHANDLE = QueryField(fieldName: "socialMediaHandle");
  static final QueryField PROFILEPICURL = QueryField(fieldName: "profilePicUrl");
  static final QueryField MOBILENUMBER = QueryField(fieldName: "mobileNumber");
  static final QueryField LASTSEEN = QueryField(fieldName: "lastSeen");
  static final QueryField VOICECALLREADYNESS = QueryField(fieldName: "voiceCallReadyness");
  static final QueryField VIDEOCALLREADYNESS = QueryField(fieldName: "videoCallReadyness");
  static final QueryField ISEMAILVERIFIED = QueryField(fieldName: "isEmailVerified");
  static final QueryField ISPHONEVERIFIED = QueryField(fieldName: "isPhoneVerified");
  static final QueryField SOCIALMEDIALOGIN = QueryField(fieldName: "socialMediaLogin");
  static final QueryField MESSAGEREADYNESS = QueryField(fieldName: "messageReadyness");
  static final QueryField DEVICEID = QueryField(fieldName: "deviceId");
  static final QueryField USERSHOPRELATION = QueryField(
    fieldName: "UserShopRelation",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (ShopMaster).toString()));
  static final QueryField USERMASTERPRODUCTMASTERSLIKERELATIONSHIP = QueryField(
    fieldName: "UserMasterProductMastersLikeRelationship",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMasterProductMaster).toString()));
  static final QueryField USERPRODUCTCOMMENTS = QueryField(
    fieldName: "UserProductComments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserProductReview).toString()));
  static final QueryField BIO = QueryField(fieldName: "bio");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField ISVERIFIED = QueryField(fieldName: "isVerified");
  static final QueryField CREATEDAT = QueryField(fieldName: "createdAt");
  static final QueryField UPDATEDAT = QueryField(fieldName: "updatedAt");
  static final QueryField GENDER = QueryField(fieldName: "Gender");
  static final QueryField STREETADDRESS = QueryField(fieldName: "StreetAddress");
  static final QueryField CITY = QueryField(fieldName: "City");
  static final QueryField STATE = QueryField(fieldName: "State");
  static final QueryField PINCODE = QueryField(fieldName: "PinCode");
  static final QueryField USERMASTERPREFER = QueryField(
    fieldName: "UserMasterPrefer",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Preferences).toString()));
  static final QueryField USERSHOPREVIEWS = QueryField(
    fieldName: "UserShopReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserShopReview).toString()));
  static final QueryField ROOMS = QueryField(
    fieldName: "Rooms",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserMasterRoom).toString()));
  static final QueryField ROOMACTIVITIES = QueryField(
    fieldName: "RoomActivities",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (RoomActivity).toString()));
  static final QueryField SHOPSFOLLOWING = QueryField(
    fieldName: "shopsFollowing",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Followers).toString()));
  static final QueryField FOLLOWERSS = QueryField(
    fieldName: "followerss",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (FollowersUserMaster).toString()));
  static final QueryField USERACTIVITIES = QueryField(
    fieldName: "UserActivities",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (UserActivity).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserMaster";
    modelSchemaDefinition.pluralName = "UserMasters";
    
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
      key: UserMaster.FIRSTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.MIDDLENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.LASTNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.GMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.FACEBOOK,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.PASSWORD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.SOCIALMEDIATYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.SOCIALMEDIAHANDLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.PROFILEPICURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.MOBILENUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.LASTSEEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.VOICECALLREADYNESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.VIDEOCALLREADYNESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.ISEMAILVERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.ISPHONEVERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.SOCIALMEDIALOGIN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.MESSAGEREADYNESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.DEVICEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERSHOPRELATION,
      isRequired: false,
      ofModelName: (ShopMaster).toString(),
      associatedKey: ShopMaster.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERMASTERPRODUCTMASTERSLIKERELATIONSHIP,
      isRequired: false,
      ofModelName: (UserMasterProductMaster).toString(),
      associatedKey: UserMasterProductMaster.USERMASTER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERPRODUCTCOMMENTS,
      isRequired: false,
      ofModelName: (UserProductReview).toString(),
      associatedKey: UserProductReview.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.BIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.USERNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.ISVERIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.CREATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.UPDATEDAT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.GENDER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.STREETADDRESS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.CITY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.STATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: UserMaster.PINCODE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERMASTERPREFER,
      isRequired: false,
      ofModelName: (Preferences).toString(),
      associatedKey: Preferences.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERSHOPREVIEWS,
      isRequired: false,
      ofModelName: (UserShopReview).toString(),
      associatedKey: UserShopReview.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.ROOMS,
      isRequired: false,
      ofModelName: (UserMasterRoom).toString(),
      associatedKey: UserMasterRoom.USERMASTER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.ROOMACTIVITIES,
      isRequired: false,
      ofModelName: (RoomActivity).toString(),
      associatedKey: RoomActivity.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.SHOPSFOLLOWING,
      isRequired: false,
      ofModelName: (Followers).toString(),
      associatedKey: Followers.USERMASTERID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.FOLLOWERSS,
      isRequired: false,
      ofModelName: (FollowersUserMaster).toString(),
      associatedKey: FollowersUserMaster.USERMASTER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: UserMaster.USERACTIVITIES,
      isRequired: false,
      ofModelName: (UserActivity).toString(),
      associatedKey: UserActivity.USERMASTERID
    ));
  });
}

class _UserMasterModelType extends ModelType<UserMaster> {
  const _UserMasterModelType();
  
  @override
  UserMaster fromJson(Map<String, dynamic> jsonData) {
    return UserMaster.fromJson(jsonData);
  }
}