import 'package:flutter/material.dart';

class MyModalListTile extends StatelessWidget {
  const MyModalListTile(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.title,
      required this.titleTextStyle,});
  final IconData icon;
  final Color? iconColor;
  final String title;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(title),
        titleTextStyle: titleTextStyle,
        horizontalTitleGap: 10,
      ),
    );
  }
}
