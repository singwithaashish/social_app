import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/screens/feed_screen.dart';
import 'package:friend_maker/test_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage("Assets/bulb.jpg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17.0, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 29),
                        ),
                        Text(
                          "Travellers Activites",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sort,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 60,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      // image: DecorationImage(
                      //   image: AssetImage("Assets/bulb.jpg"),
                      //   fit: BoxFit.cover,
                      // ),
                      // color: Colors.red,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Image.asset(
                        "Assets/bulb.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "🥥 Explore stories",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 130,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("Assets/forest.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "Assets/lightning.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "hohn $index",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "📰 News Portal",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // * feed that needs to be in a for loop
            for (int i = 0; i < 5; i++) newsFeed(context)
          ],
        ),
      ),
    );
  }

  Container newsFeed(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      // color: Colors.red,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.grey,
      //   ),
      //   borderRadius: BorderRadius.circular(20),
      // ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("Assets/bulb.jpg"),
                  radius: 20,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Melbourne, Au   2 hours ago",
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
                  builder: (context) => FeedScreen(),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "today I climbed up to the statue of liberty that was wonderful"),
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("Assets/lightning.jpg")),
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
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.share),
                label: Text("Share"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.approval,
                  color: Colors.redAccent[700],
                ),
                label: Text("Bless"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.bookmark),
                label: Text("Bookmark"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class MessagingProto extends StatelessWidget {
//   const MessagingProto({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.redAccent[700],
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.menu),
//         ),
//         title: Text("friends finder"),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.more),
//           ),
//         ],
//         backgroundColor: Colors.redAccent[700],
//         elevation: 0,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // * search box
//             Padding(
//               padding: const EdgeInsets.all(30),
//               child: TextField(
//                 decoration: InputDecoration(
//                   labelText: "🔎 Search",
//                   labelStyle: TextStyle(color: Colors.white),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(
//                       color: Colors.red,
//                       width: 2,
//                     ),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.red,
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(
//               height: 120,
//               child: ListView.builder(
//                 itemCount: friends.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (BuildContext context, int index) {
//                   return recentUser(friends[index]);
//                 },
//               ),
//             ),

//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(20))),
//                 child: ListView.builder(
//                   itemCount: friends.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return friendList(friends[index]);
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget recentUser(FriendsBlueprint fb) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       children: [
//         CircleAvatar(
//           backgroundImage: AssetImage(
//             "Assets/bulb.jpg",
//             // fit: BoxFit.cover,
//           ),
//         ),
//         SizedBox(
//           width: 70,
//           child: Text(
//             fb.username,
//             style: TextStyle(color: Colors.white),
//           ),
//         )
//       ],
//     ),
//   );
// }

// Widget friendList(FriendsBlueprint fb) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: CircleAvatar(
//             backgroundImage: AssetImage("Assets/bulb.jpg"),
//           ),
//         ),
//         Expanded(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               fb.username,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text(fb.lastMessage),
//           ],
//         ))
//       ],
//     ),
//   );
// }
