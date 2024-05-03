

import 'package:lnet/data/model/user_model.dart';

class Users {
  List<Singleuser>? users;


  Users({this.users});

  Users.fromJson(List<Map<String, dynamic>> list) {
    users = <Singleuser>[];
    for (var element in list) {
      users!.add(Singleuser.fromJson(element));
    }
  }


}