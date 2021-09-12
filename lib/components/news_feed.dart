import 'package:flutter/material.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/components/comment_sc.dart';
import 'package:friend_maker/screens/feed_screen.dart';

Container newsFeed(BuildContext context, FeedBlueprint feedBlueprint) {
  // int a = DateTime.
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.all(8.0),
    // color: Colors.red,
    decoration: BoxDecoration(
      // border: Border.all(
      //   color: Colors.grey,
      // ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5,
          offset: Offset(4, 4),
        ),
      ],
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(feedBlueprint.pfpPoster),
                radius: 20,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feedBlueprint.unPoster,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "${feedBlueprint.nameOfPlace}   ${DateTime.now().difference(feedBlueprint.dateOfPost).inHours} hours ago",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    // fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FeedScreen(feedBlueprint: feedBlueprint),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(feedBlueprint.title),
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: feedBlueprint.allImage.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          feedBlueprint.allImage[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_upward_outlined),
            ),
            Text("51"),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_downward_rounded,
                // color: Colors.redAccent[700],
              ),
            ),
            IconButton(
              onPressed: () {
                showDiscussion(context);
              },
              icon: Icon(Icons.comment_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark),
            ),
          ],
        )
      ],
    ),
  );
}
