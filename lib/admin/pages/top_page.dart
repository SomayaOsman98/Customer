import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
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
                              child: ElevatedButton(onPressed: (){},
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
                              child: ElevatedButton(onPressed: (){},
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
                              child: ElevatedButton(onPressed: (){},
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
    );
  }
}
