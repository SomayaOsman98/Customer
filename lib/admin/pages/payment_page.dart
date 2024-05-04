import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../ui/customer_data.dart';

class PaymentPage extends StatelessWidget {
  String userId;
  String pack;
  String G;
  String pay;
   PaymentPage({super.key, required this.pack, required this.G, required this.userId, required this.pay});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: AlertDialog(
        content: Container(
          width: MediaQuery.of(context).size.width * 0.35, // تعيين العرض الأفقي للديالوج
          height: MediaQuery.of(context).size.height * 0.35,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text("اختر طريقة الدفع", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color:Color(0xffbe1e2d)),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () async {  },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("img/sidad.jpeg",width: 80,height: 60,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("ســداد",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: () async {
                                    pay='sidad';
                                    print('$pack $G / $userId / $pay');
                                    // الحصول على اتصال Firestore
                                    var firestore = FirebaseFirestore.instance;

                                    // الحصول على مرجع لمجموعة الوثائق في جدول الطلبات
                                    var ordersCollection = firestore.collection('orders');

                                    // إنشاء وثيقة جديدة للطلب
                                    var orderDocument = ordersCollection.doc();
                                    Get.to(CustomerData(userID: '',));
                                    print('save');
                                    // حفظ المتغيرات في الوثيقة
                                    await orderDocument.set({

                                      'userId': userId,
                                      'pack': pack,
                                      'G': G,
                                      'pay': pay,
                                    }).then((value) {
                                      // تم حفظ البيانات بنجاح
                                      print('تم حفظ البيانات بنجاح');

                                    }).catchError((error) {
                                      // حدث خطأ أثناء حفظ البيانات
                                      print('حدث خطأ أثناء حفظ البيانات: $error');
                                    });
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text(" دفع", style: TextStyle(color:Colors.white),))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () { },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("img/cach.jpeg",width: 80,height: 60,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("موبي كاش",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: ()async {
                                    pay='mobicach';
                                    print('$pack $G / $userId / $pay');
                                    // الحصول على اتصال Firestore
                                    var firestore = FirebaseFirestore.instance;

                                    // الحصول على مرجع لمجموعة الوثائق في جدول الطلبات
                                    var ordersCollection = firestore.collection('orders');

                                    // إنشاء وثيقة جديدة للطلب
                                    var orderDocument = ordersCollection.doc();
                                    print('save');
                                    // حفظ المتغيرات في الوثيقة
                                    await orderDocument.set({

                                      'userId': userId,
                                      'pack': pack,
                                      'G': G,
                                      'pay': pay,
                                    }).then((value) {
                                      // تم حفظ البيانات بنجاح
                                      print('تم حفظ البيانات بنجاح');
                                    }).catchError((error) {
                                      // حدث خطأ أثناء حفظ البيانات
                                      print('حدث خطأ أثناء حفظ البيانات: $error');
                                    });
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text(" دفع", style: TextStyle(color:Colors.white),))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("img/visa.jpeg",width: 80,height: 60,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("معاملات",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: ()async {
                                    pay='moamalat';
                                    print('$pack $G / $userId / $pay');
                                    // الحصول على اتصال Firestore
                                    var firestore = FirebaseFirestore.instance;

                                    // الحصول على مرجع لمجموعة الوثائق في جدول الطلبات
                                    var ordersCollection = firestore.collection('orders');

                                    // إنشاء وثيقة جديدة للطلب
                                    var orderDocument = ordersCollection.doc();
                                    print('save');
                                    // حفظ المتغيرات في الوثيقة
                                    await orderDocument.set({

                                      'userId': userId,
                                      'pack': pack,
                                      'G': G,
                                      'pay': pay,
                                    }).then((value) {
                                      // تم حفظ البيانات بنجاح
                                      print('تم حفظ البيانات بنجاح');
                                    }).catchError((error) {
                                      // حدث خطأ أثناء حفظ البيانات
                                      print('حدث خطأ أثناء حفظ البيانات: $error');
                                    });
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text(" دفع", style: TextStyle(color:Colors.white),))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
