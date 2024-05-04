import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lnet/admin/pages/payment_page.dart';

class TopPage extends StatelessWidget {
  final String userID;
  final String pack;

  const TopPage({super.key, required this.userID, required this.pack});

  @override
  Widget build(BuildContext context) {
    String G;
    return  Scaffold(
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: AlertDialog(
        content: Container(
          width: MediaQuery.of(context).size.width * 0.35, // تعيين العرض الأفقي للديالوج
          height: MediaQuery.of(context).size.height * 0.35,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      color: Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {

                          // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Basic",
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: '15GB'.split(' ').map((word) {
                                    return Text(
                                      word,
                                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xffbe1e2d)),
                                    );
                                  }).toList(),
                                ),
                                Text("30DLY",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: (){
                                    G='15GB';
                                    print(G);
                                    Get.to(() => PaymentPage( pack: pack, G: G, userId: userID, pay: '',));
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text(" تعبئة", style: TextStyle(color:Colors.white),))
                                  ),
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
                        onTap: () {
                          // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("+Basic ",
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: '40GB'.split(' ').map((word) {
                                    return Text(
                                      word,
                                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xffbe1e2d)),
                                    );
                                  }).toList(),
                                ),
                                Text("60DLY",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: (){
                                    G='40GB';
                                    print(G);
                                    Get.to(() => PaymentPage( pack: pack, G: G, userId: userID, pay: '',));

                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text("تعبئة ", style: TextStyle(color:Colors.white),))),
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
                        onTap: () {
                          // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Extra",
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: '90GB'.split(' ').map((word) {
                                    return Text(
                                      word,
                                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xffbe1e2d)),
                                    );
                                  }).toList(),
                                ),
                                Text("120DLY",
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: ElevatedButton(onPressed: (){
                                    G='90GB';
                                    print(G);
                                    Get.to(() => PaymentPage( pack: pack, G: G, userId: userID, pay: '',));
                                  },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      child: Container(
                                          width: 40,
                                          child: Text(" تعبئة", style: TextStyle(color:Colors.white),))),
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
