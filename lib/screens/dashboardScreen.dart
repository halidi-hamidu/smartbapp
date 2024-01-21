// ignore_for_file: must_be_immutable, override_on_non_overriding_member, unused_import

import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';
import 'package:smartbapp/screens/base/baseAppBar.dart';
import 'package:smartbapp/screens/base/baseDrawer.dart';
import 'package:smartbapp/screens/customerScreen.dart';
import 'package:smartbapp/screens/dashboardStatusWidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:smartbapp/screens/employeeScreen.dart';






class DashboardScreen extends StatelessWidget {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<PieChartSectionData> _sections = [
    PieChartSectionData(
      color: Colors.blue,
      value:
          30, // Change this value based on the actual number of products sold today
      title: 'Product A',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
    PieChartSectionData(
      color: Colors.green,
      value:
          20, // Change this value based on the actual number of products sold today
      title: 'Product B',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
    PieChartSectionData(
      color: Colors.orange,
      value:
          50, // Change this value based on the actual number of products sold today
      title: 'Product C',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
  ];

  // my screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar:BaseAppBar(title: "Dashboard", scaffoldKey: _scaffoldKey),
      drawer: BaseDrawer(),
       body: Column(
        children: [
          // Dashboard count section
          Expanded(
            flex: 2,
            child: Container(
                // height: 250,
                color: ProjectStyle.greyColoropacity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    DashBoardStatusBarWidget(
                        title: "Transaction",
                        todayDate: "1/20/2024",
                        amount: 25000000.000),
                    DashBoardStatusBarWidget(
                        title: "Aproved Inv",
                        todayDate: "20/01/2024",
                        amount: 10),
                  ],
                )),
          ),

          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Product Sold Summary",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                Text(
                  "Jan 2024",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: ProjectStyle.greyColoropacity),
              child: PieChart(
                PieChartData(
                  sections: _sections,
                  borderData: FlBorderData(show: false),
                  centerSpaceRadius: 40,
                  sectionsSpace: 0,
                  pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {}),
                ),
              ),
            ),
            flex: 3,
          ),

          // Graph will displayed here
          //  Expanded(child: child),
        ],
      ),
    );

   
  }
}


