import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key,this.title, this.leading,
    this.action
  })
      : super(key: key);
  final Widget? leading;

  final String? title;
  final List <Widget>? action;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text(
        title != null ? title! : '',
        style: TextStyle(color: Colors.white) ,

      ),
      leading: leading,
      actions: action,

    );


  }
}
