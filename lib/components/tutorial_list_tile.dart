import 'package:flutter/material.dart';

class MyTutorialListTile extends StatelessWidget {
  const MyTutorialListTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.titleTextStyle,
    required this.index,
    this.indexTextStyle,
  });
  final IconData icon;
  final Color? iconColor;
  final String title;
  final TextStyle? titleTextStyle;
  final String index;
  final TextStyle? indexTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 55,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                leading: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 22,
                ),
                title: Text(title),
                titleTextStyle: titleTextStyle,
                horizontalTitleGap: 10,
                trailing: Text(
                  index,
                  style: indexTextStyle,
                ),
              ),
            ),
          ],
        ));
  }
}
