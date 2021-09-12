import 'dart:ui';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/components/news_feed.dart';
import 'package:friend_maker/screens/add_screen.dart';
import 'package:friend_maker/screens/discover_screen.dart';
import 'package:friend_maker/screens/feed_screen.dart';
import 'package:friend_maker/screens/notif_screen.dart';
import 'package:friend_maker/screens/profile_screen.dart';
import 'package:friend_maker/screens/stories_screen.dart';
import 'package:friend_maker/test_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> allNav = [
    HomeWidget(),
    DiscoverScreen(),
    AddScreen(),
    NotifScreen(),
    ProfileScreen()
  ];

  List<String> pageName = [
    "Home",
    "Discover",
    "Add",
    "Notification",
    "Profile",
  ];

  UserBlueprint me = new UserBlueprint(
    username: "Singwithaashish",
    email: "singwithaashish@gmail.com",
    profilePic:
        "https://images.unsplash.com/photo-1629477091314-7196cc5395f8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  );
  int currentPageInxex = 0;
  final ZoomDrawerController zoomDrawerController = new ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentPageInxex != 2 && currentPageInxex != 4
          ? AppBar(
              elevation: 0,
              title: Text(pageName[currentPageInxex]),
              // centerTitle: true,
              backgroundColor: Colors.redAccent[700],
              // leading: IconButton(
              //     onPressed: () {
              //       // zoomDrawerController!.toggle();
              //     },
              //     icon: Icon(Icons.menu)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundImage: AssetImage("Assets/bulb.jpg"),
                  ),
                ),
              ],
            )
          : null,
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.redAccent[700],
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discover'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.notifications, title: 'Notification'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          setState(() {
            currentPageInxex = i;
          });
        },
      ),
      body: allNav[currentPageInxex],
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(me.profilePic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              me.username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            newButton("Profile", () {}, Icons.person),
            newButton("Settings", () {}, Icons.settings),
            newButton("How it works", () {}, Icons.question_answer),
            newButton("Bookmarks", () {}, Icons.bookmark),
            newButton("Privacy policy", () {}, Icons.privacy_tip),
          ],
        ),
      ),
    );
  }

  GestureDetector newButton(String text, Function onClic, IconData icons) {
    return GestureDetector(
      // onTap: onClic,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.redAccent[700],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icons,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      // Text(
                      //   "Travellers Activites",
                      //   style: TextStyle(
                      //     color: Colors.grey,
                      //   ),
                      // )
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
              itemCount: allStories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoriesScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 130,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(4, 4),
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(allStories[index].picUrl),
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
                              child: Image.network(
                                allStories[index].pfpUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            allStories[index].author,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
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
          for (int i = 0; i < allFeeds.length; i++)
            newsFeed(context, allFeeds[i])
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
