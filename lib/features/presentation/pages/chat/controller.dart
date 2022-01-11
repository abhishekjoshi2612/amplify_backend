import 'dart:developer';

import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/features/data/services/chat.dart';
import 'package:amplified_todo/models/ChatData.dart';
import 'package:amplified_todo/models/MessageType.dart';
import 'package:amplified_todo/models/Room.dart';
import 'package:amplified_todo/models/UserMaster.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:get/get.dart';

/// Init the controller by supplying a peer user
class ChatController extends GetxController {
  final UserMaster peer;

  ///
  ChatController({required this.peer});
  final _chatService = ChatService();
  final _authService = AuthService();
  Room? room;
  UserMaster? currentUser;

  ///

  Future<void> init() async {
    room = await _chatService.fetchRoom(peer);
    room ??= await _chatService.createRoom(peer);
    currentUser = await _authService.loggedInUser();
    update();
  }

  Future<void> updateActivity() async {}

  Future<void> sendMessage(String message) async {
    if (room == null) {
      room = await _chatService.createRoom(peer);
      update();
    }

    await _chatService.sendMessage(
      ChatData(
        sentBy: currentUser!.id,
        message: message,
        roomId: room!.id,
        type: MessageType.TEXT,
        createdAt: TemporalDateTime.now(),
      ),
    );
  }
}
