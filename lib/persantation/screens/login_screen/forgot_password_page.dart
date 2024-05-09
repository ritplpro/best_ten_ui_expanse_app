
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {


  var confirmpasswordController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Text('Password',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
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
            SizedBox(height: 10),

            SizedBox(height: 30),
            ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary
            ),
                onPressed: (){}, child:Text("Password Update ")),
            SizedBox(height: 30),








          ],
        ),
      ),
    );
  }
}
