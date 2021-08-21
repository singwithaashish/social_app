import 'package:flutter/material.dart';

Padding textField(
    TextEditingController tec, String lbl, bool obsText, double pdng) {
  return Padding(
    padding: EdgeInsets.all(pdng),
    child: TextField(
      controller: tec,
      obscureText: obsText,
      decoration: InputDecoration(
        labelText: lbl,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    ),
  );
}
