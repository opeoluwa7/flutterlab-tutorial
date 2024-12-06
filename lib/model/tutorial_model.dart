import 'package:flutter/material.dart';
import 'package:myapp/model/tutorial_item.dart';

class TutorialModel {
  final List<TutorialItem> tutorials = [
    TutorialItem(icon: Icons.pages, title: 'Introduction'),
    TutorialItem(icon: Icons.code, title: 'Dart Core'),
    TutorialItem(icon: Icons.install_desktop, title: 'Flutter Setup' ),
    TutorialItem(icon: Icons.folder, title: 'Folder Structure'),
    TutorialItem(icon: Icons.play_circle_fill_rounded, title: 'Starting Point'),
    TutorialItem(icon: Icons.phone_android_rounded, title: 'Scaffold Widget'),
    TutorialItem(icon: Icons.widgets_rounded, title: 'Core Widgets'),
    TutorialItem(icon: Icons.color_lens_rounded, title: 'Colors Class'),
    TutorialItem(icon: Icons.fast_forward_rounded, title: 'Improving Efficiency'),
    TutorialItem(icon: Icons.sync, title: 'Stateless Widget'),
    TutorialItem(icon: Icons.sync_alt_rounded, title: 'Stateful Widget'),
    TutorialItem(icon: Icons.phone_iphone_rounded, title: 'AppBar Widget'),
    TutorialItem(icon: Icons.add_circle_rounded, title: 'FAB Widget'),
    TutorialItem(icon: Icons.text_fields_rounded, title: 'TextField Widget'),
    TutorialItem(icon: Icons.image_rounded, title: 'Image Widget'),
    TutorialItem(icon: Icons.stacked_line_chart_rounded, title: 'Stack Widget'),
    TutorialItem(icon: Icons.align_horizontal_center, title: 'Align Widget'),
    TutorialItem(icon: Icons.list_alt_rounded, title: 'ListView Widget'),
    TutorialItem(icon: Icons.multiple_stop_rounded, title: 'Multiple Screens'),
    TutorialItem(icon: Icons.safety_divider, title: 'Divider Widget'),
  ];
}
