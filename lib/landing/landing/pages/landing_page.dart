import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/landing_controller.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    LandingController landingController = Get.put(LandingController(),permanent: true);

    landingController.checkLogin();
    return  Scaffold(
      // backgroundColor: const Color(0xff058181),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child:Image.asset('img/logo2.jpeg', height: 400, width: 400,),
        ),
      ),
    );
  }
}
