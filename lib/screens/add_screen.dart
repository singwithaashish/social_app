import 'dart:io';

import 'package:flutter/material.dart';
import 'package:friend_maker/blueprints/blueprints.dart';
import 'package:friend_maker/components/text_field.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController titleT = new TextEditingController(),
      descT = new TextEditingController(),
      locT = new TextEditingController();

  final ImagePicker _picker = ImagePicker();
  bool readyToSubmit = false;

  List<XFile> images = [];

  void pickImage() async {
    images = await _picker.pickMultiImage() ?? [];
    setState(() {});
    if (titleT.text.isEmpty ||
        descT.text.isEmpty ||
        locT.text.isEmpty ||
        images == []) {
      readyToSubmit = false;
    } else {
      readyToSubmit = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/forest.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Add your Experience"),
              textField(titleT, "Title", false, 10),
              textField(descT, "discription", false, 10),
              textField(locT, "Location", false, 10),
              images.length == 0
                  ? ElevatedButton.icon(
                      onPressed: pickImage,
                      icon: Icon(Icons.image),
                      label: Text("Add Images"),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images.length,
                            itemBuilder: (BuildContext context, int index) {
                              File fil = new File(images[index].path);
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(children: [
                                  Image.file(
                                    fil,
                                    fit: BoxFit.cover,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        images.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.cancel,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  )
                                ]),
                              );
                            },
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (titleT.text.isEmpty ||
                                descT.text.isEmpty ||
                                locT.text.isEmpty ||
                                images == []) {
                              readyToSubmit = false;
                            } else {
                              readyToSubmit = true;
                            }

                            if (readyToSubmit) {
                              FeedBlueprint(
                                  unPoster: "unPoster",
                                  pfpPoster: "pfpPoster",
                                  dateOfPost: DateTime.now(),
                                  nameOfPlace: locT.text,
                                  title: titleT.text,
                                  description: descT.text,
                                  community: "community",
                                  allImage: []);
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title:
                                      Text("Enter everything before uploading"),
                                  content: Text(
                                      "Make sure to enter Title, Description, location and image before submitting"),
                                  actions: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                      ),
                                      label: Text("Close"),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          icon: Icon(Icons.check),
                          label: Text("Submit"),
                          style: ElevatedButton.styleFrom(
                            primary: readyToSubmit
                                ? Colors.lightGreenAccent[400]
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
