import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/components/comment_sc.dart';
import 'package:friend_maker/test_data.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key, required this.feedBlueprint}) : super(key: key);

  final FeedBlueprint feedBlueprint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("pressed 2");
        },
        label: Row(
          children: [
            IconButton(
              onPressed: () {
                print("blessed");
              },
              icon: Icon(Icons.arrow_upward),
            ),
            IconButton(
              onPressed: () {
                print("cursed");
              },
              icon: Icon(Icons.arrow_downward),
            ),
            IconButton(
              onPressed: () {
                print("messages");
                showDiscussion(context);
              },
              icon: Icon(Icons.message),
            ),
            IconButton(
              onPressed: () {
                print("Bookmark");
              },
              icon: Icon(Icons.bookmark),
            ),
          ],
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: feedAppbar(
        context,
        feedBlueprint.unPoster,
        feedBlueprint.nameOfPlace,
        DateTime.now().difference(feedBlueprint.dateOfPost).inHours,
        feedBlueprint.pfpPoster,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                feedBlueprint.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(feedBlueprint.description),
            for (int i = 0; i < feedBlueprint.allImage.length; i++)
              Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(feedBlueprint.allImage[i]),
                ),
              )
          ],
        ),
      ),
    );
  }
}

AppBar feedAppbar(
    BuildContext context, String username, String loc, int hrsAgo, String pfp) {
  return AppBar(
    backgroundColor: Colors.redAccent[700],
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            // color: Colors.black,
          ))
    ],
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_left),
    ),
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(pfp),
            // maxRadius: 10,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // color: Colors.black,
              ),
            ),
            Text(
              "${loc}  ${hrsAgo} hours ago",
              style: TextStyle(
                fontSize: 15,
                // color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    ),
  );
}
