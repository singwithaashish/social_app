class UserBlueprint {
  String username;
  String email;
  int avatarIndex = 0;

  UserBlueprint({
    required this.username,
    required this.email,
  });
}

class MessageBlueprint {
  String messages;
  String sender;
  String uidOfSender;
  DateTime sentDate = DateTime.now();

  MessageBlueprint({
    required this.messages,
    required this.sender,
    required this.uidOfSender,
  });
}

class FriendsBlueprint {
  String username;
  String id;
  String lastMessage;
  int avatarIndex = 0;

  FriendsBlueprint({
    required this.username,
    required this.id,
    required this.lastMessage,
  });
}
