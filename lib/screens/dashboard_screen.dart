import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';
import 'package:smartbapp/screens/button.dart';
import 'package:smartbapp/screens/dashboard_status_widget.dart';

class DashboardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

                 Expanded(child: Text('data2'), flex: 3 ,),
           

              // Graph will displayed here
              //  Expanded(child: child),
            ],
        ),);
  }
}
