import 'package:flutter/material.dart';

class CustomerData extends StatelessWidget {
  const CustomerData({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.59;
    final width = MediaQuery.of(context).size.width *0.55;
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
                const Text(
                  'إسم المستخدم',
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
        leading:  Container(
          width: 40,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "LNET",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Color(0xffb50218),
              ),
            ),
          )
        ),
      ),
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.only(top: 10),
              //   width: MediaQuery.of(context).size.width*0.55,
              //   height: 60,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ClipOval(
              //         child: Image.asset(
              //           "img/visa.jpeg",
              //           width: 50,
              //           height: 80,
              //         ),
              //       ),
              //       ClipOval(
              //         child: Image.asset(
              //           "img/cach.jpeg",
              //           width: 50,
              //           height: 80,
              //         ),
              //       ),
              //       ClipOval(
              //         child: Image.asset(
              //           "img/sidad.jpeg",
              //           width: 50,
              //           height: 50,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
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
                                      'اسم المستخدم الثلاثي: محمد رمضان أحمد',
                                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text('الباقة: WIFI Packages'),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('رقم العقد: 091880'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('رصيد الباقة: 40GB'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('رقم الهاتف: 0910345670'),
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
                                    Text('مكان السكن: وسط المدينة'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('المدينة: مصراتة'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('طريقة الدفع: سداد'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('تاريخ الإنتهاء: 24/06/2024'),
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
                        title: Text('إضافة عرض'),
                        content: Container(
                           width: MediaQuery.of(context).size.width * 0.35, // تعيين العرض الأفقي للديالوج
                          // height: MediaQuery.of(context).size.height * 0.60, // تعيين الارتفاع العمودي للديالوج
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: Text(""),
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