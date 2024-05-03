import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/landing_controller.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    LandingController landingController = Get.put(LandingController(),permanent: true);

    landingController.checkLogin();
    return  Scaffold(
      backgroundColor: const Color(0xff058181),
      body: Container(
    // decoration: BoxDecoration(
    // image: DecorationImage(
    // image: AssetImage('img/check.jpg'),
    // fit: BoxFit.cover,
    // ),
    // ),
      ),
    );
  }
}
