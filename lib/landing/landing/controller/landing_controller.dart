import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lnet/ui/customer_data.dart';

import '../../../auth/pages/login_page.dart';
import '../../../storage.dart';

class LandingController extends GetxController {



  checkLogin()
  async {
   await Future.delayed(const Duration(seconds: 2));

    if(storage.read('phone') == null)
      {
        Get.to(LoginPage());
      }
    else
      {
        Get.to(const CustomerData(userID: '',));
      }


  }


}
