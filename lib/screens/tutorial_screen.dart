import 'package:flutter/material.dart';
import 'package:myapp/components/tutorial_list_tile.dart';
import 'package:myapp/model/tutorial_model.dart';

class TutorialScreen extends StatelessWidget {
  TutorialScreen({super.key});

  final List tutorials = TutorialModel().tutorials;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: tutorials.length,
      itemBuilder: (context, index) {
        final tutorial = tutorials[index];

        return MyTutorialListTile(
          icon: tutorial.icon,
          iconColor: Theme.of(context).iconTheme.color,
          title: tutorial.title,
          titleTextStyle: Theme.of(context).textTheme.titleMedium,
          index: index.toString(),
          indexTextStyle: Theme.of(context).textTheme.labelSmall,
        );
      },
    ));
  }
}
