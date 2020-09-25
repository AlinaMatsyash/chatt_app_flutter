import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseMethods {
  getUserByUsername(String username) async {
    return await Firestore.instance
        .collection('users')
        .where('name', isEqualTo: username)
        .getDocuments();
  }

  getUserByUserEmail(String userEmail) async {
    return await Firestore.instance
        .collection('users')
        .where('email', isEqualTo: userEmail)
        .getDocuments();
  }

  uploadUserInfo(userMap) {
    Firestore.instance.collection('users').add(userMap).catchError((e) {
      print((e).toString());
    });
  }

  createChatRoom(String charRoomId, chatRoomMap) {
    Firestore.instance
        .collection('ChatRoom')
        .document(charRoomId)
        .setData(chatRoomMap)
        .catchError((e) {
      print(e.toString());
    });
  }
}
