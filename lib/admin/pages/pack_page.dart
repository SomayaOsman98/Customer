import 'package:flutter/material.dart';

class PackPage extends StatelessWidget {
  const PackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
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
                            Icon(Icons.wifi, color: Color(0xffb50219),size: 70,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: 'WIFI Packages'.split(' ').map((word) {
                                return Text(
                                  word,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                );
                              }).toList(),
                            ),
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
                            Icon(Icons.business_center_outlined, color: Color(0xffb50219),size: 70,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: 'Business Unlimited'.split(' ').map((word) {
                                return Text(
                                  word,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                );
                              }).toList(),
                            ),
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
                            Icon(Icons.home, color: Color(0xffb50219),size: 70,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: 'Home Unlimited'.split(' ').map((word){
                                return Text(
                                  word,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
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
                            Icon(Icons.videogame_asset_rounded, color: Color(0xffb50219),size: 70,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: 'Gamer Packages'.split(' ').map((word) {
                                return Text(
                                  word,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                );
                              }).toList(),
                            ),
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
                            Icon(Icons.network_check_outlined, color: Color(0xffb50219),size: 70,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: 'ADSL Packages'.split(' ').map((word)  {
                                return Text(
                                  word,
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 140,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
