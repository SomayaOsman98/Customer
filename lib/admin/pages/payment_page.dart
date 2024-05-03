import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
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
                    onTap: () {
                      // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                    },
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
                              child: ElevatedButton(onPressed: (){},
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
                    onTap: () {
                      // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                    },
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
                              child: ElevatedButton(onPressed: (){},
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
                    onTap: () {
                      // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                    },
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
                              child: ElevatedButton(onPressed: (){},
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
    );
  }
}
