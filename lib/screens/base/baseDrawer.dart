import 'package:flutter/material.dart';
import 'package:smartbapp/assets/appstyle.dart';
import 'package:smartbapp/screens/customerScreen.dart';
import 'package:smartbapp/screens/dashboardScreen.dart';
class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      "hi admin",
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
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap
                
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
               ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.people_alt_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Employees",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),

              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.security_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Authorization",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),

              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.shop_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shops",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),

              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.card_giftcard_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Products",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.store_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Store",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.people_alt_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Customers",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CustomersScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),

              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.attach_money_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sales",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),

              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.document_scanner_rounded,
                      color: ProjectStyle.textWhiteColor,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Invoices",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: ProjectStyle.textWhiteColor),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle item 1 tap

                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
              ),
              Divider(
                height: 10,
                color: ProjectStyle.textWhiteColor,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),






              // list of button
              
              

              
            ],
          )
        ]),
      );
  }
}