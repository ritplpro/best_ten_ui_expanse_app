import 'package:best_ten_ui_expanse_app/data/database_helper/database_signup.dart';


class ExpanseModal{
  int id;
  String title;
  String desc;
  String createdAt;
  String amount;
  String category;
  int userUid;
  String transitionType;

 ExpanseModal({this.id=0,required this.title,required this.desc,required this.amount,required this.createdAt,
   required this.category,required this.transitionType,required this.userUid
 });

 factory ExpanseModal.fromMap (Map<String,dynamic> map){
   return ExpanseModal(
     id: map[DataBaseHelper.Ex_ID],
       title: map[DataBaseHelper.EX_Title],
       desc: map[DataBaseHelper.Ex_Desc],
       createdAt: map[DataBaseHelper.EX_Time],
       amount: map[DataBaseHelper.EX_Amount],
       category: map[DataBaseHelper.EX_Category],
       transitionType: map[DataBaseHelper.EX_Type_of_Transition],
       userUid: map[DataBaseHelper.User_ID]);
 }


 Map<String,dynamic> toMap(){
   return{
     DataBaseHelper.EX_Title:title,
     DataBaseHelper.Ex_Desc:desc,
     DataBaseHelper.EX_Time:createdAt,
     DataBaseHelper.EX_Amount:amount,
     DataBaseHelper.EX_Category:category,
     DataBaseHelper.EX_Type_of_Transition:transitionType,
     DataBaseHelper.User_ID:userUid
   };
 }


}