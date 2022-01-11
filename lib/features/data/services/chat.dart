import 'package:amplified_todo/features/data/services/auth.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:get/get.dart';

class ChatService {
  final AuthService _auth = Get.find<AuthService>();

  ///
  Future<Room?> fetchRoom(UserMaster peer) async {
    final user = await _auth.loggedInUser();
    final room = await Amplify.DataStore.query(
      Room.classType,
      where: Room.PARTICIPANTS
          .contains(peer.id)
          .and(Room.PARTICIPANTS.contains(user!.id)),
    );
    if (room.isEmpty) {
      return null;
    }
    return room.first;
  }

  Future<void> sendMessage(ChatData message) async {
    await Amplify.DataStore.save(message);
  }

  Future<Room> createRoom(UserMaster peer) async {
    final user = await _auth.loggedInUser();
    await Amplify.DataStore.save(
      Room(
        created_by: user!.id,
        is_group_chat: false,
        participants: [peer.id, user.id],
      ),
    );
    final List<Room> rooms = await Amplify.DataStore.query(
      Room.classType,
      where: Room.PARTICIPANTS
          .contains(peer.id)
          .and(Room.PARTICIPANTS.contains(user.id)),
    );
    return rooms.first;
  }

  Future<bool> roomExists(UserMaster peer) async {
    final room = await fetchRoom(peer);
    return room != null;
  }

  ///
  Future<void> updateUserActivity(UserMaster user, {required Room room}) async {
    final user = await _auth.loggedInUser();
    final roomActivity = RoomActivity(
      userId: user!.id,
      roomID: room.id,
      lastSeen: TemporalDateTime.now(),
    );
    await Amplify.DataStore.save(roomActivity);
  }

  /// Add a chat to the [ChatRoom]
  Future<void> addChat(Room room, ChatData chat) async {
    await Amplify.DataStore.save(chat);
  }
}
