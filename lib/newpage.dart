import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  var mytext = "change";
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("New Page"),
      ),

      body: Center(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(

              child: Column(
                children: [


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(mytext,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _nameController,
                       decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some Text",
                        labelText: "Name",

                      ),



                    ),
                  ),

                  RaisedButton(onPressed: (){
                    mytext = _nameController.text;
                    setState(() {

                    });
                  },
                    color: Colors.orange,
                    child: Text("Change",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),

                ],
              ),

            ),
          ),

        ),
      ),
    );
  }
}

