import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartbapp/screens/CustomersScreenWidgets.dart';
import 'package:smartbapp/screens/base/baseAppBar.dart';
import 'package:smartbapp/screens/base/baseDrawer.dart';

import '../providers/CustomerDetailsModelProvider.dart';

class CustomersScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
   CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: BaseAppBar(title: "Customer list", scaffoldKey: _scaffoldKey),
      drawer:BaseDrawer(),
      body: ChangeNotifierProvider(create:(context) => CustomerDetailsModelProvider(),
        child: CustomersScreenWidgets(),
      ),
      
    );
  }
}