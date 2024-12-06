import 'package:flutter/material.dart';
import 'package:myapp/model/modal_sheet_item.dart';



class ModalSheetModel {

  final List<ModelSheetItem> items = [
    ModelSheetItem(icon: Icons.first_page_rounded, title: 'Introduction Page'),
    ModelSheetItem(icon: Icons.play_circle_fill_rounded, title: 'YouTube Channel'),
    ModelSheetItem(icon: Icons.camera_alt, title: 'Instagram Page'),
    ModelSheetItem(icon: Icons.workspace_premium_rounded, title: 'Upgrade to Pro'),
    ModelSheetItem(icon: Icons.local_convenience_store_rounded, title: 'More Apps'),
    ModelSheetItem(icon: Icons.star, title: 'Rate App'),
    ModelSheetItem(icon: Icons.info, title: 'About'),
  ];

}
