import 'package:my_uvs/uvs_app/home_screen.dart';
import 'package:my_uvs/fitness/fitness_app_home_screen.dart';
//import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [


    HomeList(

      navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}
