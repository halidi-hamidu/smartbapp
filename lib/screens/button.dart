import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';

class SideBarButton extends StatelessWidget {
  final String  buttonName;
  final  buttonIcon;

  const SideBarButton(
    {
    super.key, 
    required this.buttonName,
    required this.buttonIcon, }
    );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  buttonIcon as IconData?,
                  color: ProjectStyle.textWhiteColor,
                  size: 25,
                ),
                SizedBox(width: 10,), 
                Text(buttonName, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19,color: ProjectStyle.textWhiteColor ),),
                
              ],
            ),
            onTap: () {
              // Handle item 1 tap
              Navigator.pop(context);
            },
          ),
          Divider(
          height: 10,
          color: ProjectStyle.textWhiteColor,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
            
  }
}