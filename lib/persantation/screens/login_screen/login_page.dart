
import 'package:best_ten_ui_expanse_app/data/database_helper/database_signup.dart';
import 'package:flutter/material.dart';

import '../homepage_screen/navigation_bar_page.dart';
import 'create_acct.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatelessWidget {


  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Text('Email address',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Password',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              controller:passwordController,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.remove_red_eye_sharp),
                  ),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                }, child: Text('forgot password ?',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),)),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary
            ),
                onPressed: () async {
                var mydata=DataBaseHelper.dataBase;
                var check= await mydata.authenticateUser(emailController.text.toString(),
                    passwordController.text.toString());
                if(check){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>NavigationBarPage()));

                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Invild Credentials !!")));

                }






                }, child:Text("Login Account")),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don`t have an account'),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAccount()));
                }, child: Text('sign up ?',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),))
              ],
            ),







          ],
        ),
      ),
    );
  }
}
