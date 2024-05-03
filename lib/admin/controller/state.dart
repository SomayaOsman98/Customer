import '../../data/model/user_model.dart';
import '../../data/model/users_model.dart';

class HomeState
{

  StateType type;
  Users? users;
  Singleuser? singleUser;
  String? error;


  HomeState({required this.type,this.users,this.singleUser,this.error});


}


enum StateType{
  loading,
  loaded,
  error
}