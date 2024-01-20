import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';
import 'package:smartbapp/screens/button.dart';
import 'package:smartbapp/screens/dashboard_status_widget.dart';
import 'package:fl_chart/fl_chart.dart';
class DashboardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<PieChartSectionData> _sections = [
    PieChartSectionData(
      color: Colors.blue,
      value: 30, // Change this value based on the actual number of products sold today
      title: 'Product A',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
    PieChartSectionData(
      color: Colors.green,
      value: 20, // Change this value based on the actual number of products sold today
      title: 'Product B',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
    PieChartSectionData(
      color: Colors.orange,
      value: 50, // Change this value based on the actual number of products sold today
      title: 'Product C',
      radius: 80,
      titleStyle: TextStyle(color: Colors.white),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: ProjectStyle.redColor,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: ProjectStyle.WhitebuttonColor,
              ),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              }),
              actions: [
               Padding(padding: EdgeInsets.symmetric(horizontal:30), child:  Icon(
              Icons.sync,
              color: ProjectStyle.whiteIcon,
            ),)
              ],
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: ProjectStyle.textWhiteColor,
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: ProjectStyle.greyColor,
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: ProjectStyle.redColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_pin,
                        color: ProjectStyle.textWhiteColor,
                        size: 50,
                      ),
                      Text(
                        "Loggin as Admin",
                        style: TextStyle(
                          color: ProjectStyle.textWhiteColor,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )),
            Column(
              children: [
                // list of button
                SideBarButton(
                    buttonName: "Dashboard", buttonIcon: Icons.dashboard),
                SideBarButton(
                    buttonName: "Emplyees", buttonIcon: Icons.people_alt_sharp),
                SideBarButton(
                    buttonName: "User authorization",
                    buttonIcon: Icons.security_sharp),
                SideBarButton(
                    buttonName: "Shops", buttonIcon: Icons.shopify_rounded),
                SideBarButton(
                    buttonName: "Products",
                    buttonIcon: Icons.shopping_bag_sharp),
                SideBarButton(
                    buttonName: "Store",
                    buttonIcon: Icons.store_mall_directory),
                SideBarButton(
                    buttonName: "Sales", buttonIcon: Icons.attach_money),
                SideBarButton(
                    buttonName: "Invoices", buttonIcon: Icons.document_scanner),
                SideBarButton(
                    buttonName: "Orders", buttonIcon: Icons.save_alt_sharp),
                SideBarButton(
                    buttonName: "Emergences",
                    buttonIcon: Icons.emergency_rounded),
              ],
            )
          ]),
        ),
        body:Column(
            children: [
              // Dashboard count section
                Expanded(
                  flex: 2,
                  child: Container(
                    // height: 250,
                    color: ProjectStyle.greyColoropacity,
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        DashBoardStatusBarWidget(title: "Transaction", todayDate: "20/01/2024", amount: 25000000.000),
                        DashBoardStatusBarWidget(title: "Aproved Inv", todayDate: "20/01/2024", amount: 10),  
                      ],
                    )
                  ),
                ),

                Center(
                  child: Column(
                    children: [
                      SizedBox(height:20,),
                      Text("Product Sold Summary", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
                      Text("Jan 2024", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

                 Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                      color: ProjectStyle.greyColoropacity
                    ),
                  child:PieChart(
                  PieChartData(
                    sections: _sections,
                    borderData: FlBorderData(show: false),
                    centerSpaceRadius: 40,
                    sectionsSpace: 0,
                    pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {}),
                
                  ),
                   ),
                 ),
                   flex: 3 ,
                   ),
 
           

              // Graph will displayed here
              //  Expanded(child: child),
            ],
        ),);
  }
}
