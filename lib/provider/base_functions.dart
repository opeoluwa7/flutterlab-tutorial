import 'package:flutter/material.dart';

class BaseFunctions with ChangeNotifier{

   handleModalNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
      return Navigator.pop(context);
      case 1:
      return Navigator.pop(context);
      case 2:
      return Navigator.pop(context);
      case 3:
      return Navigator.pop(context);
      case 4:
      return Navigator.pop(context);
      case 5:
      return Navigator.pop(context);
      case 6:
      return Navigator.pop(context);
      case 7:
      return Navigator.pop(context);
    }
  }
}