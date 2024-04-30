import 'package:best_ten_ui_expanse_app/navigation_bar_page.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
            Image.asset("assets/images/intro.jpeg"),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)
                  )
                ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>NavigationBarPage()));
                    }, child: Icon(Icons.arrow_forward_outlined)),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
