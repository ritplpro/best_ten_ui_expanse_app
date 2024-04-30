import 'package:flutter/material.dart';

class StaticPage extends StatefulWidget {



  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Statistic",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
        leadingWidth: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)
                )
              ),
                onPressed: (){}, child:Text('This Month ∨')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0XFFF6574D3),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text('Total Expanse',
                          style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('\$2345',style:TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        )),
                        Text(' / \$ 234 per month',style:TextStyle(
                            color: Colors.white
                        ))

                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width:350 ,
                          color: Color(0XFFFebc68f),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expanse Breakdown",style: TextStyle(
                      fontSize: 18,
                    fontWeight: FontWeight.bold),),
                    Text("Limit \$900/ week"),

                  ],
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1)
                  )
                ),
                    onPressed: (){}, child:Text("Week ∨"))
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey,)
              ),

            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Speeding Details",style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                    Text("Your expanses divided into 6 catagories"),

                  ],
                ),

              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 100,
                      height: 7,
                      color: Color(0XFFF6574D3),
                    ),
                    Text('40%')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 7,
                      color: Color(0XFFFE88EBF),
                    ),
                    Text('25%')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 7,
                      color: Color(0XFFFEBC58F),
                    ),
                    Text('20%')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 45,
                      height: 7,
                      color: Color(0XFFF66C2DB),
                    ),
                    Text('15%')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 7,
                      color: Color(0XFFFDA6565),
                    ),
                    Text('10%')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width:40,
                      height: 7,
                      color: Color(0XFFF66C2DB),
                    ),
                    Text('5%')
                  ],
                ),

              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    child: ListView.builder(itemCount:2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 190,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListTile(
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


                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
