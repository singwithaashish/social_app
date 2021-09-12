import 'package:flutter/material.dart';
import 'package:friend_maker/test_data.dart';

class NotifScreen extends StatelessWidget {
  const NotifScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: allNotifications.length,
        // shrinkWrap: true,
        reverse: true,
        itemBuilder: (BuildContext context, int index) {
          return buildNotification(index);
        },
      ),
    );
  }

  Container buildNotification(int index) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allNotifications[index].time.toString(),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                allNotifications[index].notificatoinContent,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
