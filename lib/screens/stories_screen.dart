import 'package:flutter/material.dart';
import 'package:friend_maker/test_data.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_left,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(allStories[currentPage].pfpUrl),
                // maxRadius: 10,
              ),
            ),
            Text(
              allStories[currentPage].author,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      // ! should be a slidable page
      body: PageView(
        onPageChanged: (p) {
          setState(() {
            currentPage = p;
          });
        },
        controller: controller,
        children: [
          // ListView.builder(
          //   itemCount: allStories.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       height: double.infinity,
          //       width: double.infinity,
          //       padding: EdgeInsets.all(20),
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: NetworkImage(
          //               "https://images.unsplash.com/photo-1629215831407-9732e5571c9c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          //         ),
          //       ),
          //     );
          //   },
          // ),
          for (int i = 0; i < allStories.length; i++)
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(allStories[i].picUrl),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
