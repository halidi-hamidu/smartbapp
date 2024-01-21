import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';

// import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
 final GlobalKey<ScaffoldState> scaffoldKey;


  BaseAppBar({required this.title, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          title, style: TextStyle(
          color: ProjectStyle.textWhiteColor,
        ),
      ),
      // Add any additional configuration for the AppBar here
      backgroundColor: ProjectStyle.redColor,
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: ProjectStyle.WhitebuttonColor,
          ),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          }),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Icon(
            Icons.sync,
            color: ProjectStyle.whiteIcon,
          ),
        )
      ]
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
