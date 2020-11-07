import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class CustomListviewGet extends StatefulWidget {
  @override
  _CustomListviewGetState createState() => _CustomListviewGetState();
}

class _CustomListviewGetState extends State<CustomListviewGet> {
  final String baseurl = "https://shihab.techdevbd.com/sokol_bazar/file_upload_api/";
  var url = "https://shihab.techdevbd.com/sokol_bazar/get_products.php";
  var data;
  List users = [];
  var box_color = Colors.greenAccent[200];
//  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }

  fetchUser() async{

    var res = await http.get(url);
    if(res.statusCode == 200){
      data = jsonDecode(res.body);
      setState(() {
        users = data;
      //  isLoading = false;
      });
    }else{

      setState(() {
        users = [];
      //  isLoading = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Custom listView"),
      ),
      body: getBody(),
    );
  }

 Widget getBody(){

    if(data ==null){
      return Center(child: CircularProgressIndicator());
    }else{
      return  ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
         int price = int.parse(data[index]["p_price"]);
         if(price > 500){
           box_color = Colors.redAccent[200];
         }else{
           box_color = Colors.greenAccent[200];
         }
            return  getData(index);
          });


    }


 }

 Widget getData(index){
   double cardwidth = MediaQuery.of(context).size.width;
   double cardheight = cardwidth/4 ;
   double imagewidth = cardheight-20;
   double imageheight = cardheight/4;
   double imageheighthalf = cardheight/2;
    return Row(
      children: [
        Container(
          width: cardwidth,
          height: cardheight,
          child: Card(

            margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 15),
                  child: Column(

                    children: [
                      //SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                        ),

                        child:Image.network(baseurl+data[index]["image_url"],
                          height: cardheight-30,
                          width: cardheight-20,
                        ),

                      ),
                    ],
                  ),

                ),
                Positioned(
                  left: imagewidth+10,
                  top: imageheight-10,
                  child: Text(data[index]["p_name"],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                Positioned(
                  left: imagewidth+10,
                  top: imageheighthalf-10,

                  child: Text(

                    "ID: ${data[index]["id"]}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: imagewidth+10,
                  //  top: imageheight+40,
                  bottom: imageheight-20,
                  child: Text("\$ "+data[index]["p_price"],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: imageheighthalf-40,
                  child:
                  Card(
                    color: box_color,
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Delivered",
                              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
 }
}
