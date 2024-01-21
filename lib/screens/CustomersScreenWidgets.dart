// ignore_for_file: unused_import, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:smartbapp/assets/appstyle.dart';
import 'package:smartbapp/models/CustomerDetailsModel.dart';
import 'package:smartbapp/providers/CustomerDetailsModelProvider.dart';

class CustomersScreenWidgets extends StatefulWidget {
  const CustomersScreenWidgets({super.key});

  @override
  State<CustomersScreenWidgets> createState() => _CustomersScreenWidgetsState();
}

class _CustomersScreenWidgetsState extends State<CustomersScreenWidgets> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<CustomerDetailsModelProvider>(context, listen: false);
    provider.getDataFromApi();
  }
  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<CustomerDetailsModelProvider>(context);
    return provider.isLoading 
           ? getLoadingUi() 
           : provider.error.isNotEmpty 
           ? getErrorUi(provider.error)
           : getBodyUi(provider.customers);
          }

Widget getLoadingUi() {

  return (
    Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SpinKitFadingCircle(
            color: Colors.red,
            size: 80.0,
          ),
          Text("Loading...", style: TextStyle( fontSize: 20, color: ProjectStyle.redColor),),

          ],
        ),
    )
  );
}

Widget getErrorUi(String error) {

  return Center(
    child: Text(error)
  );
}

Widget getBodyUi(CustomerDetailsModel customers) {
  return Column(
    children: [
      Expanded(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: ProjectStyle.greyColor,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Customers no.", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300,color: ProjectStyle.textWhiteColor ),),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: ProjectStyle.whiteBackgroundColor, ),
                    child: Text(customers.results.length.toString(), style: TextStyle(fontSize: 30),)
                  ),
                ),
              ),
            ],
          ),),
        ),
        flex: 1,
      ),
      Expanded(
        flex: 3,
        child:  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
          ),
          child: ListView.builder(
          itemCount: customers.results.length,
          itemBuilder: (context, index) {
            // Create a new reversed list
            final reversedList = List.from(customers.results.reversed);
            final customerName = reversedList[index].customerFullName;
            final capitalizedCustomerName =customerName.isEmpty ? '' : customerName[0].toUpperCase() ;
            return Container(
              decoration: BoxDecoration(
                  color: ProjectStyle.greyColor,
                  border: Border.all(color: ProjectStyle.whiteBackgroundColor)),
              child: ListTile(
                onTap: () {
                        print("List tile tapped");
                        // Call a function to show the customer information popup
                           showCustomerInformationPopup(context, reversedList[index]);
                      },
                leading: Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ProjectStyle.blackIcon),
                    child: Center(
                        child: Text(capitalizedCustomerName,
                            style: TextStyle(
                                color: ProjectStyle.textWhiteColor,
                                fontSize: 15)))),
                title: Text(
                  reversedList[index].customerFullName,
                  style: TextStyle(color: ProjectStyle.textWhiteColor),
                ),
              ),
            );
          },
                ),
        ))
    ],
  );
}


// alert box should be here to display customer details

void showCustomerInformationPopup(BuildContext context, Result customer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Customer Information', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Name: ${customer.customerFullName}'),
              Text('Phone Number: ${customer.customerPhoneNumber}'),
              Text('Created At: ${customer.createdAt.toString()}'),
              Text('Updated At: ${customer.updatedAt.toString()}'),
              // Add more customer information as needed
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }


}

