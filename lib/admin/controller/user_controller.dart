import 'package:get/get.dart';
import 'package:lnet/data/model/user_model.dart';
import 'package:lnet/data/repository/user_repository.dart';

class UserController extends GetxController {
   final UserRepository userRepository;

  UserController( {this.userRepository = const UserRepository() });




  addUser({required Singleuser singleuser})
  {
    userRepository.addUser(singleUser: singleuser);


  }



  editUser({required Singleuser singleuser})
  async {
    await userRepository.editUser(singleUser: singleuser);
    Get.back();


  }



}



