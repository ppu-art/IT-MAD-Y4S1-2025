
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FacultyScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<FacultyScreen> {
  
  
  bool _isLoading = true;
  List<Widget> listItems = [];
  

  Future<List> loadFaculty() async {
    // Load Data from asset
    dynamic data = await rootBundle.loadString("assets/data/faculty.json");
    print("Data $data");
    // Decode as List
    final dataJson = jsonDecode(data) as List;
    print("dataJson $dataJson");

    // Loop add in items
    listItems = dataJson.map((i) {
      return Card(
        child: ListTile(
          leading: Icon(Icons.book_online),
          title: Text("${i["titleKh"]}", style: TextStyle(
            fontFamily: 'NotoSansKhmer'
          ),),
          subtitle: Text("${i["title"]}"),
          trailing: Icon(Icons.navigate_next),
        ),
        elevation: 3,
      );
    }).toList();

    // Delay
    await Future.delayed(Duration(seconds: 2));

    // Set state for stop loading
    setState(() {
      _isLoading = false;
    });
    return dataJson;
  }

  @override
  void initState() {
    super.initState();
    loadFaculty();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: _appBar,
      body: _isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : ListView(
        children: listItems,
      ),
    );
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      title: Text("Faculty"),
    );
  }
}