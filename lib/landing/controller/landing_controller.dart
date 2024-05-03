import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lnet/ui/customer_data.dart';
import '../../auth/pages/login_page.dart';
class LandingController extends GetxController {



  checkLogin()
  async {
   await Future.delayed(const Duration(seconds: 2));
    var user = FirebaseAuth.instance.currentUser;

    if(user == null)
      {
        Get.to(LoginPage());
      }
    else
      {
        Get.to(const CustomerData());
      }


  }


}
