import 'package:flutter/material.dart';
import 'package:friend_maker/screens/feed_screen.dart';
import 'package:friend_maker/test_data.dart';

void showDiscussion(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_left),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          child: ListView.builder(
            itemCount: allComments.length,
            itemBuilder: (BuildContext context, int index) {
              return commentWidget(index, context);
            },
          ),
        ),
      ),
    ),
  );
}

Container commentWidget(int index, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      // border: Border.all(),
      color: Colors.white,
    ),
    margin: EdgeInsets.all(10),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(allComments[index].pfpAuthor),
            radius: 20,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              allComments[index].author,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  allComments[index].comment,
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                )),
            Row(
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
                // IconButton(
                //   onPressed: () {
                //     print("messages");
                //     showDiscussion(context);
                //   },
                //   icon: Icon(Icons.message),
                // ),
                IconButton(
                  onPressed: () {
                    print("Bookmark");
                  },
                  icon: Icon(Icons.bookmark),
                ),
              ],
            )
          ],
        ),
        Expanded(
          child: IconButton(
            onPressed: () {
              print("more");
            },
            icon: Icon(Icons.more),
          ),
        ),
      ],
    ),
  );
}
