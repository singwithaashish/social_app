import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Row(
          children: [
            Icon(Icons.cancel),
            SizedBox(width: 5),
            Text("close"),
          ],
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_book,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("Assets/bulb.jpg"),
            // maxRadius: 10,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Melbourne, Au   2 hours ago",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "today I climbed up to the statue of liberty that was wonderful"),
            ),
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("Assets/lightning.jpg")),
              )
          ],
        ),
      ),
    );
  }
}
