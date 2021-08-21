import 'package:flutter/cupertino.dart';

class UserBlueprint {
  String username;
  String email;
  String profilePic;

  UserBlueprint({
    required this.username,
    required this.email,
    required this.profilePic,
  });
}

// class MessageBlueprint {
//   String messages;
//   String sender;
//   String uidOfSender;
//   DateTime sentDate = DateTime.now();

//   MessageBlueprint({
//     required this.messages,
//     required this.sender,
//     required this.uidOfSender,
//   });
// }

// class FriendsBlueprint {
//   String username;
//   String id;
//   String lastMessage;
//   int avatarIndex = 0;

//   FriendsBlueprint({
//     required this.username,
//     required this.id,
//     required this.lastMessage,
//   });
// }

class FeedBlueprint {
  String unPoster;
  String idPoster;
  String pfpPoster;
  DateTime dateOfPost;
  String nameOfPlace;
  String title;
  String description;
  int totalBless = 0;
  int category = 0; // * 0 > travel | 1 > art | 2 > meme | 3 >
  List<String> allImage = [];

  FeedBlueprint({
    required this.unPoster,
    required this.idPoster,
    required this.pfpPoster,
    required this.dateOfPost,
    required this.nameOfPlace,
    required this.title,
    required this.description,
    required this.totalBless,
    required this.category,
    required this.allImage,
  });

  FeedBlueprint fromMap(Map<String, dynamic> inp) {
    return FeedBlueprint(
        unPoster: inp["unPoster"],
        idPoster: inp["idPoster"],
        pfpPoster: inp["pfpPoster"],
        dateOfPost: inp["dateOfPost"],
        nameOfPlace: inp["nameOfPlace"],
        title: inp["title"],
        description: inp["description"],
        totalBless: inp["totalBless"],
        category: inp["category"],
        allImage: inp["allImage"]);
  }

  Map<String, dynamic> toMap(FeedBlueprint feedBlueprint) {
    return {
      "unPoster": feedBlueprint.unPoster,
      "idPoster": feedBlueprint.idPoster,
      "pfpPoster": feedBlueprint.pfpPoster,
      "dateOfPost": feedBlueprint.dateOfPost,
      "nameOfPlace": feedBlueprint.nameOfPlace,
      "title": feedBlueprint.title,
      "description": feedBlueprint.description,
      "totalBless": feedBlueprint.totalBless,
      "allImage": feedBlueprint.allImage,
      "category": feedBlueprint.category,
    };
  }
}

class NotificationBluePrint {
  String notificatoinContent;
  DateTime time;
  String? postId;

  NotificationBluePrint({
    required this.notificatoinContent,
    required this.time,
  });

  NotificationBluePrint toNotification(Map<String, dynamic> notifData) {
    return NotificationBluePrint(
      notificatoinContent: notifData["notificatoinContent"],
      time: notifData["time"],
    );
  }
}
