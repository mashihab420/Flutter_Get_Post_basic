import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData extends StatefulWidget {
  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  final String baseurl = "https://shihab.techdevbd.com/sokol_bazar/file_upload_api/";
 // var url = "https://jsonplaceholder.typicode.com/photos";
  var url = "https://shihab.techdevbd.com/sokol_bazar/get_products.php";

  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Get Data"),
      ),
      body: data != null ? ListView.builder(
        itemBuilder: (context ,index){
          return ListTile(
            title: Text(data[index]["p_name"]),
            subtitle: Text("ID: ${data[index]["id"]}"),

          leading: Image.network(baseurl+data[index]["image_url"]),
          );

        },
        itemCount: data.length,
      )
          :Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
