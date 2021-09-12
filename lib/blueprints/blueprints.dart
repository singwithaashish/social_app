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
  // username and id are same and unique
  String unPoster;
  // List<String> upvoters, downvoters;
  String pfpPoster;
  DateTime dateOfPost;
  String nameOfPlace;
  String title;
  String description;
  // int totalBless = 0;
  String community; // * 0 > travel | 1 > art | 2 > meme | 3 >
  List<String> allImage = [];

  FeedBlueprint({
    required this.unPoster,
    required this.pfpPoster,
    required this.dateOfPost,
    required this.nameOfPlace,
    required this.title,
    required this.description,
    // required this.upvoters,
    // required this.downvoters,
    required this.community,
    required this.allImage,
  });

  FeedBlueprint fromMap(Map<String, dynamic> inp) {
    return FeedBlueprint(
        unPoster: inp["unPoster"],
        pfpPoster: inp["pfpPoster"],
        dateOfPost: inp["dateOfPost"],
        nameOfPlace: inp["nameOfPlace"],
        title: inp["title"],
        description: inp["description"],
        // upvoters: inp["upvoters"],
        // downvoters: inp["downvoters"],
        community: inp["category"],
        allImage: inp["allImage"]);
  }

  Map<dynamic, dynamic> toMap(FeedBlueprint feedBlueprint) {
    return {
      "unPoster": feedBlueprint.unPoster,
      "pfpPoster": feedBlueprint.pfpPoster,
      "dateOfPost": feedBlueprint.dateOfPost,
      "nameOfPlace": feedBlueprint.nameOfPlace,
      "title": feedBlueprint.title,
      "description": feedBlueprint.description,
      // "upvoters": feedBlueprint.upvoters,
      // "downvoters": feedBlueprint.downvoters,
      "allImage": feedBlueprint.allImage,
      "category": feedBlueprint.community,
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

  NotificationBluePrint toNotification(Map<dynamic, dynamic> notifData) {
    return NotificationBluePrint(
      notificatoinContent: notifData["notificatoinContent"],
      time: notifData["time"],
    );
  }
}

// * Every community is meant to be a collection
class CommunityBlueprint {
  String communityName;
  DateTime dateCreated;
  List<String> executivesUid; // * list of all mods
  String profileUrl;

  CommunityBlueprint({
    required this.communityName,
    required this.dateCreated,
    required this.executivesUid,
    required this.profileUrl,
  });

  CommunityBlueprint tocb(Map<dynamic, dynamic> jsn) {
    return CommunityBlueprint(
      communityName: jsn["communityName"],
      dateCreated: jsn["dateCreated"],
      executivesUid: jsn["executivesUid"],
      profileUrl: jsn["profileUrl"],
    );
  }
}

class StoryBlueprint {
  String author;
  String pfpUrl;
  String picUrl;
  DateTime postDate;

  StoryBlueprint({
    required this.author,
    required this.pfpUrl,
    required this.picUrl,
    required this.postDate,
  });

  StoryBlueprint toStB(Map<dynamic, dynamic> data) {
    return StoryBlueprint(
      author: data["author"],
      pfpUrl: data["pfpUrl"],
      picUrl: data["picUrl"],
      postDate: data["postDate"],
    );
  }

  Map<dynamic, dynamic> toMap(StoryBlueprint stb) {
    return {
      "author": stb.author,
      "pfpUrl": stb.pfpUrl,
      "picUrl": stb.picUrl,
      "postDate": stb.postDate,
    };
  }
}

class CommentsBlueprint {
  String comment;
  String author;
  String pfpAuthor;
  DateTime timeOfComment = DateTime.now();

  CommentsBlueprint({
    required this.comment,
    required this.author,
    required this.pfpAuthor,
    required this.timeOfComment,
  });

  CommentsBlueprint toCb(Map<dynamic, dynamic> input) {
    return CommentsBlueprint(
      comment: input["comment"],
      author: input["author"],
      pfpAuthor: input["pfpAuthor"],
      timeOfComment: input["timeOfComment"],
    );
  }

  Map<dynamic, dynamic> toJson(CommentsBlueprint cb) {
    return {
      "comment": cb.comment,
      "author": cb.author,
      "pfpAuthor": cb.pfpAuthor,
      "timeOfComment": cb.timeOfComment,
    };
  }
}
