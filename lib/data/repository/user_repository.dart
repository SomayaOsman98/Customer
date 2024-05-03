import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lnet/data/model/user_model.dart';


class UserRepository {
  const UserRepository();
  addUser({required Singleuser singleUser}) {
    FirebaseFirestore.instance.collection('users')
        .add(singleUser.toJson()).then((value) => print("User Added"));
  }
  editUser({required Singleuser singleUser}) {
    FirebaseFirestore.instance.collection('users')
        .doc(singleUser.id.toString())
        .set(singleUser.toJson()).then((value) => print("User edit"));
  }

}