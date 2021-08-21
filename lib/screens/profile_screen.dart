import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:friend_maker/screens/home_screen.dart';
import 'package:friend_maker/test_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,

          floating: true,
          // leading: Hero(tag: 'prof',child: ,),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Random User',
              style: TextStyle(color: Colors.red),
            ),
            centerTitle: true,
            stretchModes: [StretchMode.fadeTitle],
            background: ProfileInfo(),
          ),
          expandedHeight: 300,
        ),
        // Text("their contribution"),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return newsFeed(
                context,
                allFeeds[index],
              ); //showInvitesAttended();
            },
          ),
        )
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/19/cf/78/19cf789a8e216dc898043489c16cec00.jpg'),
            fit: BoxFit.cover),
        // color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                ),
                // statsShow('69', 'Invites attended'),
                // statsShow('100%', 'attending rate'),
                // statsShow('⭐ * 5', 'peer review'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
