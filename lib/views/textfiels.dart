import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  final Color? colorIn;

  const TextFieldWidget({this.text, this.colorIn});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 60,
      color: Color(0),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: text, // pass the hint text parameter here
        hintStyle: TextStyle(color: colorIn),
      )),
    );
  }
}
