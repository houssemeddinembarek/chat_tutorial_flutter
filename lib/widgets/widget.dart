import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final dynamic title;
  final Color? backgroundColor;

  const AppBarMain({Key? key, this.title, this.backgroundColor})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    print(title);
    return AppBar(
      title: title.runtimeType == String ? Text(title): title,
      backgroundColor: backgroundColor,
    );
  }
}
