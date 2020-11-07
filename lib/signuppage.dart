import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 final TextEditingController namecontroller = TextEditingController();
 final TextEditingController phonecontroller = TextEditingController();
 final TextEditingController passcontroller = TextEditingController();
 final TextEditingController addresscontroller = TextEditingController();
 var responsee ="";

 var mylist = new List();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("SignUP"),),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(

                    hintText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    hintText: "Phone",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passcontroller,
                  decoration: InputDecoration(
                    hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: addresscontroller,
                  decoration: InputDecoration(
                    hintText: "Address",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),
                      filled: true,
                      fillColor: Colors.grey[200]
                  ),
                ),
              ),
              Text(responsee),

              SizedBox(height: 20,),



              RaisedButton(onPressed: () async{


                  var url = "https://shihab.techdevbd.com/sokol_bazar/create_user.php";
                  var data = {
                    "name": namecontroller.text,
                    "phone": phonecontroller.text,
                    "password": passcontroller.text,
                    "address": addresscontroller.text,
                  };


                  var res = await http.post(url,body: data);

                  if(jsonDecode(res.body) == "Account already exists" ){
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Account exists, Please login")));


                    setState(() {
                      responsee = res.body;
                    });
                  }else{
                    if(jsonDecode(res.body) == "true"){
                      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Account created")));
                    }else{
                      Scaffold.of(context).showSnackBar(SnackBar(content: Text("error")));
                    }
                  }


              },
                child: Text("SignUp"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


