import 'package:flutter/material.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/components/news_feed.dart';
import 'package:friend_maker/screens/feed_screen.dart';
import 'package:friend_maker/test_data.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allRecommendations.length,
      itemBuilder: (BuildContext context, int index) {
        return discovery(context, allRecommendations[index]);
      },
    );
  }

  Container discovery(BuildContext context, CommunityBlueprint cb) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.black,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.all(5),
      // padding: EdgeInsets.all(8),
      child: newsFeed(context, allFeeds[0]),
    );
  }
}
