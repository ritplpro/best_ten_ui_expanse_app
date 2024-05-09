

import 'package:flutter/material.dart';
import '../login_screen/login_page.dart';


class FirstScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 80),
            Text('Monety',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30),
            Image.asset("lib/assets/images/intro.jpeg"),
            SizedBox(height: 10),
            Text('Easy way to monitor',
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Text('your expense',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )),
            SizedBox(height: 10),
            Text('Safe your future by managing your ',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
            )),
            Text('expense right now ',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
            )),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),

                  ),
                      shadowColor: Colors.grey
                ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                    }, child:Text('Create Account ﹥',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black54
                ),)),
              ],
            ),



          ],
        ),
      ),
    );
  }

    
  }
  
  

