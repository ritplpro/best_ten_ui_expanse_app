import 'package:best_ten_ui_expanse_app/data/database_helper/database_signup.dart';

class SignUpModal{
  int id;
  String name;
  String email_address;
  String password;

  SignUpModal({this.id=0,required this.name,required this.email_address,required this.password});

  factory SignUpModal.fromMap(Map<String,dynamic> map){
    return SignUpModal(
        id: map[DataBaseHelper.User_ID],
        name: map[DataBaseHelper.User_Name],
        email_address: map[DataBaseHelper.User_Email],
        password: map[DataBaseHelper.User_Password]);
  }

  Map<String,dynamic> toMap(){
    return {

      DataBaseHelper.User_Name:name,
      DataBaseHelper.User_Email:email_address,
      DataBaseHelper.User_Password:password
    };
  }



}