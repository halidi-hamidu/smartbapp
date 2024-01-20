import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';

class DashBoardStatusBarWidget extends StatelessWidget {
  final String title;
  final String todayDate;
  final double amount;
  const DashBoardStatusBarWidget({super.key, required this.title, required this.todayDate, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ProjectStyle.whiteBackgroundColor,
          border: Border.all(
              color: ProjectStyle.redColor,
              style: BorderStyle.solid,
              width: 0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // icons
            Wrap(
              children: [
                Icon(
                  Icons.wallet,
                  color: ProjectStyle.redColor,
                  size: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Text(todayDate, style: TextStyle(fontSize: 10),),
                  ],
                ),
              ],
            ),

            // title1
            

            // title2

            Text(amount as String),
          ],
        ),
      ),
    );
  }
}
