import 'dart:io';

import 'package:flutter/material.dart';
import 'package:friend_maker/components/text_field.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController tex = new TextEditingController();

  final ImagePicker _picker = ImagePicker();

  List<XFile> images = [];

  void pickImage() async {
    images = await _picker.pickMultiImage() ?? [];
    setState(() {});
    print(images[0].name);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/forest.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text("Add your Experience"),
              textField(tex, "Title", true, 10),
              textField(tex, "discription", true, 10),
              textField(tex, "Location", true, 10),
              images.length == 0
                  ? IconButton(
                      onPressed: pickImage,
                      icon: Icon(Icons.image),
                    )
                  : SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          File fil = new File(images[index].path);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.file(
                              fil,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
