
import 'package:best_ten_ui_expanse_app/data/database_helper/database_signup.dart';
import 'package:best_ten_ui_expanse_app/data/modals/SignIn_modal.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class CreateAccount extends StatefulWidget {

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmpasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Text('Enter your full Name ',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 10),
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
              children: [
                Text('Confirm Password',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              controller:confirmpasswordController,
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
            SizedBox(height: 30),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary
            ),
                onPressed: () async {
              var confirm=confirmpasswordController.text.toString();

              if(confirm==passwordController.text.toString()) {
                var mydata = DataBaseHelper.dataBase;

                var check = await mydata.addNewUser(newUser: SignUpModal(
                    name: nameController.text.toString(),
                    email_address: emailController.text.toString(),
                    password: confirmpasswordController.text.toString()));

                if (check) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("accountt already created !!"),
                        action: SnackBarAction(onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        }, label: 'login now '),));
                }
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("password and confirm password are not match !!")));

              }





                }, child:Text("Create Account")),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an acct',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),

                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text('Log in ?',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),)
              ],
            ),








          ],
        ),
      ),
    );
  }
}
