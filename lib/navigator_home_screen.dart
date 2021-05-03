import 'package:my_uvs/app_theme.dart';
import 'package:my_uvs/costumer_drawer/drawer_user_controller.dart';
import 'package:my_uvs/costumer_drawer/home_drawer.dart';
import 'package:my_uvs/feedback_screen.dart';
import 'package:my_uvs/platform_screen.dart';
import 'package:my_uvs/bourse_screen.dart';
import 'package:my_uvs/uvs_app/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_uvs/uvs_app/home_screen.dart';
import 'package:my_uvs/uvs_app_form/form_screen_page.dart';
import 'package:my_uvs/uvs_app/note_screen.dart';
import 'package:my_uvs/uvs_app/requeste_screen.dart';
import 'package:my_uvs/uvs_app/news_screen.dart';
import 'package:my_uvs/my_diary/my_diary_screen.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = DesignCourseHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView =  DesignCourseHomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Platform) {
        setState(() {
          screenView = Platform();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      }
      else if (drawerIndex == DrawerIndex.Profil) {
        setState(() {
          screenView = ProfilePage();
        });
      } else if (drawerIndex == DrawerIndex.Bourse) {
        setState(() {
          screenView = SamaBourse();
        });
      }else if (drawerIndex == DrawerIndex.Note) {
        setState(() {
          screenView = RequeteScreen();
        });
      } else {
        //do in your way......
      }
    }
  }
}
