import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lnet/admin/pages/pack_page.dart';

import '../auth/pages/login_page.dart';

class CustomerData extends StatefulWidget {
  final String userID;
  const CustomerData({super.key, required this.userID});

  @override
  State<CustomerData> createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  Map<String, dynamic> customerData = {}; // تخزين بيانات الزبون

  @override
  void initState() {
    super.initState();
    fetchCustomerData(); // استعادة بيانات الزبون عند بدء تشغيل الواجهة
  }
  Future<void> fetchCustomerData() async {
    try {
      // Get the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Get the customer document using the provided userId
      DocumentSnapshot documentSnapshot =
      await firestore.collection('users').doc(widget.userID).get();

      // Check if the document exists
      if (documentSnapshot.exists) {
        // Retrieve customer data from the document
        setState(() {
          customerData = documentSnapshot.data() as Map<String, dynamic>;
          print('Package Type: ${customerData['package_type']}');
        });
      } else {
        // Document does not exist
        print('Customer document does not exist');
      }
    } catch (e) {
      print('Error fetching customer data: $e');
    }
  }
  // Sign out
  Future<void> SignOut(BuildContext context) async {
    // Sign out from Firebase
    await FirebaseAuth.instance.signOut();

    // Redirect the user to the login page
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.59;
    final width = MediaQuery.of(context).size.width *0.55;
    Map<String, dynamic> arguments = Get.arguments;
    String userName = arguments['userName'];
    String userID = arguments['userID'];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.person_pin_rounded, size: 40, color: Color(0xffb50218)),
                  tooltip: 'الملف الشخصي',
                  onPressed: () {},
                ),
                 Text(
                  userName.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffb50218),
                  ),
                ),
              ],
            ),
          ),
        ],
        title: const Center(
          child: Text(
            "بيانات الزبون",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Color(0xffb50218),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.exit_to_app_outlined,
                  size: 40,
                  color: Color(0xffb50218),
                ),
                tooltip: 'تسجيل خروج',
                onPressed: () {
                  SignOut(context);                 },
              ),
              const Text(
                ' خروج',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffb50218),
                ),
              ),
            ],
          ),
        ),
        ),
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container( height: 40,),
              Container(
                width: width,
                height: height,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 2),
                      blurRadius: 25,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      '  اسم المستخدم:${userName}  ',
                                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text('  الباقة:  ${customerData['package_type']}'),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text(' رقم العقد:  ${customerData['number']}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text(' رصيد الباقة:   ${customerData['current_balance']}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text(' رقم الهاتف: ${customerData['phone']}'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 40),
                                child: Row(
                                  children: [
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 40),
                                child: Row(
                                  children: [
                                    Text(' مكان السكن: ${customerData['address']}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('  المدينة: ${customerData['city']}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text(' طريقة الدفع: ${customerData['payment_method']}'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text(' تاريخ الإنتهاء:${customerData['expiration_date']}'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20), // المسافة بين الصفوف
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Row(
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        margin: EdgeInsets.only(top:500, left: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'تعبئة الرصيد',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 20,top: 8),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // تعيين الشكل كدائرة
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('تعبئة رصيد'),
                        content: Container(
                           width: MediaQuery.of(context).size.width * 0.35, // تعيين العرض الأفقي للديالوج
                           height: MediaQuery.of(context).size.height * 0.60, // تعيين الارتفاع العمودي للديالوج
                         // height: MediaQuery.of(context).size.height * 0.35,
                          child: PackPage(userID: userID,),
                        ),
                      actions: [
                          TextButton(
                            child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffb50218),
                                  padding: const EdgeInsets.symmetric(vertical: 8),

                                ),
                                child: const Text("إغلاق", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color:Colors.white,
                                ),)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: CircleAvatar( // استخدام CircleAvatar لعرض الأيقونة بشكل دائري
                  child: Icon(Icons.add),
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xffb50218),
                ),
                backgroundColor: Colors.transparent, // تعيين خلفية الـ FloatingActionButton على الشفافية
                elevation: 0, // تعيين ارتفاع الـ FloatingActionButton على 0 لإخفاء الظل
              ),
            ),
          ],
        ),
      ),
    );
  }
}