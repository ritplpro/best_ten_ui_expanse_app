import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String,dynamic>> ListData=[
    {
      "title":"Shop",
      "subtitle":"Buy new  cloths",
      "price":"\$90",
      "icon":Icons.add_shopping_cart_outlined
    },
    {
      "title":"Electronic",
      "subtitle":"Buy new iphone 15 ",
      "price":"\$190",
      "icon":Icons.phone_iphone
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                child: SvgPicture.asset('assets/images/image.svg'),//flutter svg package use for svg images
              ),
              SizedBox(width: 10),
              Text("Mahesh",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),)
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
        backgroundColor: Colors.white      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFF6574D3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Expanse Total',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("\$98849",style: TextStyle(
                                color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 50,
                            decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Center(child: Text('+ 456',style: TextStyle(
                                color: Colors.white,
                              ),)),
                            )),
                            SizedBox(width: 10),
                            Text('than last month',style: TextStyle(
                              color: Colors.white,
                            ),)
                          ],
                        ),



                      ],
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Expanse List ',style: TextStyle(
                  fontSize: 20
                ),),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Thursday,14",style: TextStyle(
                          fontSize: 18
                        ),),
                        Text("3444",style: TextStyle(
                          fontSize: 18
                        ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(itemCount:ListData.length ,
                        itemBuilder: (context,index){
                      return ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(ListData[index]["icon"]),
                        ),
                        title: Text(ListData[index]["title"]),
                        subtitle: Text(ListData[index]["subtitle"]),
                        trailing: Text(ListData[index]["price"],style: TextStyle(
                            fontSize: 17
                        ),),

                      );
                    }),
                  )

                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white30,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Monday,9",style: TextStyle(
                            fontSize: 18
                        ),),
                        Text("40",style: TextStyle(
                            fontSize: 18
                        ),)

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(itemCount:1,
                        itemBuilder: (context,index){
                          return ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.green.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(ListData[index]["icon"]),
                            ),
                            title: Text(ListData[index]["title"]),
                            subtitle: Text(ListData[index]["subtitle"]),
                            trailing: Text(ListData[index]["price"],style: TextStyle(
                                fontSize: 17
                            ),),

                          );
                        }),
                  )

                ],
              ),
            ),



          ],
        ),
      ),

    );
  }
}
