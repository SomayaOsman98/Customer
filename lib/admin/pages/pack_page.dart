import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lnet/admin/pages/top_page.dart';

class PackPage extends StatelessWidget {
  String pack=' ';
  String userID='';
   PackPage({super.key, required this.userID});
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
                      pack='WIFI Packages';
                      print(pack);
                      Get.to(() => TopPage(userID: userID, pack: pack));
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
                       pack='Business Unlimited';
                       print(pack);
                       Get.to(() => TopPage(userID: userID, pack: pack));
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
                      pack='Home Unlimited';
                      print(pack);
                      // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                      Get.to(() => TopPage(userID: userID, pack: pack));



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
                       pack='Gamer Packages';
                       print(pack);
                       Get.to(() => TopPage(userID: userID, pack: pack));

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
                      pack='ADSL Packages';
                      print(pack);
                      Get.to(() => TopPage(userID: userID, pack: pack));
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
