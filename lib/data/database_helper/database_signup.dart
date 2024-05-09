
 import 'package:best_ten_ui_expanse_app/data/modals/SignIn_modal.dart';
import 'package:best_ten_ui_expanse_app/data/modals/expanse_modal.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';


class DataBaseHelper{

 DataBaseHelper._();

 static final DataBaseHelper dataBase=DataBaseHelper._();

 static const String Table_Name="exnote";
 static const String User_ID="id";
 static const String User_Name="name";
 static const String User_Email="email_address";
 static const String User_Password="Password";

 static const String Table_EXName="expanse_note";
 static const String Ex_ID="ex_id";
 static const String EX_Title="title";
 static const String Ex_Desc="desc";
 static const String EX_Time="created_at";
 static const String EX_Amount="amount";
 static const String EX_Category="category_id";
 static const String EX_Type_of_Transition="transition_type";
 static const String Login_UID="uid";




 Database? myData;

 createBase() async {
  if(myData != null){
   return myData;
  }else{
   var myData=await initBase();
   return myData;
  }
 }

  initBase() async {
  var path=await getApplicationDocumentsDirectory();
  var actualpath=join(path.path,"expanse.db");
  return await openDatabase(actualpath,version: 1,onCreate: (dataBase,version){

   dataBase.execute("create table $Table_Name ( $User_ID integer primary key autoincrement, $User_Name text, $User_Email text unique, $User_Password text)");

   dataBase.execute("create table $Table_EXName ( $Ex_ID integer primary key autoincrement, $EX_Title text, $Ex_Desc text, $EX_Time text, $EX_Amount text, $EX_Type_of_Transition text, $EX_Category text, $User_ID integer)");

  });
  }

 /// user sign in

  Future<bool> addNewUser({required SignUpModal newUser}) async {
  var userdata=await createBase();
  bool haveAccount=await checkAlreadyexit(newUser.email_address);
  bool acctCreated=false;
  if(!haveAccount){
   var rowsefdfected=await userdata.insert(Table_Name,newUser.toMap());
      acctCreated=rowsefdfected>0;
  }
return acctCreated;
  }
  /// User check Email Exists
  Future<bool> checkAlreadyexit(String useremail) async {
   var userdata=await createBase();
   var lData=await userdata.query(Table_Name,where:"$User_Email=?",whereArgs:[useremail]);
   return lData.isNotEmpty;
  }

  /// User Login check

 Future<bool> authenticateUser(String email,String pass) async {
  var userdata=await createBase();
 var lData=await userdata.query ( Table_Name,where:"$User_Email = ? AND $User_Password = ?",
      whereArgs:[email,pass]);

  if(lData.isNotEmpty){
   setUid(SignUpModal.fromMap(lData[0]).id);

  }
  return lData.isNotEmpty;
 }

 /// Uses of Shared_preferences

 Future<int> getUid() async {
  var prefs= await SharedPreferences.getInstance();
  return prefs.getInt("UID")!;
 }

 setUid(int uid) async {
  var prefs=await SharedPreferences.getInstance();
  prefs.setInt("UID",uid);
 }






  fetchLoginData() async {
  var userdata=await createBase();
  var uid=await getUid();
  var fetchlogin= await userdata.query(Table_Name,where:"$User_ID=?",whereArgs:["$uid"]);
  List<ExpanseModal> logData=[];

  for(Map<String,dynamic> eachModal in fetchlogin){
   var addata=ExpanseModal.fromMap(eachModal);
   logData.add(addata);
  }
  return logData;
  }


  addExpanse({required ExpanseModal addexpanse}) async {
  var user=await createBase();
  var uid=await getUid();
  addexpanse.userUid=uid;


  user.update(Table_Name,addexpanse.toMap());

  }


  deleteUser(int id) async {
  var userid=await createBase();
  userid.delete(Table_Name,where:"$User_ID = ?",whereArgs:["$id"]);

  }







 }