import 'package:flutter/material.dart';
import 'package:secont_flutter_app/getdata.dart';
import 'package:secont_flutter_app/signuppage.dart';

import 'CustomListviewGet.dart';
import 'newpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
        height: 400,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),

                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue,
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

                Container(
                  padding: const EdgeInsets.all(8),

                  width:100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue,
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

                Container(
                  padding: const EdgeInsets.all(8),

                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue,
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),

                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

                Container(
                  padding: const EdgeInsets.all(8),

                  width:100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),

                Container(
                  padding: const EdgeInsets.all(8),

                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.blue,
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(onPressed: (){

                 // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                },
                  color: Colors.yellow,
                  textColor: Colors.white,
                  child: Text("Next Page",style: TextStyle(fontSize: 20),),
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(onPressed: (){

                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomListviewGet()));
                  
                },
                  color: Colors.yellow,
                  textColor: Colors.white,
                  child: Text("Get Data Page",style: TextStyle(fontSize: 20),),
                ),


              ],
            ),

          ],
        ),
      ),

    );
  }
}

