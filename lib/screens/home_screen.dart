import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mad/constant/app_color.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<void> loadText() async{
    String dataString = await rootBundle.loadString('assets/data/sample.txt');
    // dynamic data = jsonDecode(dataString);
    print("Data  : $dataString");
  }

  @override
  void initState() {
    super.initState();
    loadText();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body
    );
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      title: ListTile(
        title: Text("Hi, Kang", style: TextStyle(color: AppColor.appTextColor),),
        subtitle: Text("Here is your activity today", style: TextStyle(color: AppColor.appTextColor),),
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications),
        )
      ],
    );
  }

  Widget get _body {
    return ListView(
      children: [
        _slider,
        _menu,
        _firstMenuTitle,
        _firstMenuList,
        _secondMenuTitle,
        _secondMenuList
      ],
    );
  }

  Widget get _slider {
    return Image.asset('assets/images/slide.png',
    fit: BoxFit.cover,);
  }

  Widget get _menu {

    List<String> dataMenu = ["Faculty","Student", "Subject","Teacher","Alumni"];

    // Custom Icon Data
    final iconData = SvgPicture.asset('assets/icons/education.svg', width: 50, height: 50,);

    final colMenu = dataMenu.map((i) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              iconData,
              Text("$i")
            ],
          ),
        ),
      );
    }).toList();

    final rowMenu = Row(
      children: colMenu,
    );

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: rowMenu,
    );
  }

  Widget get _firstMenuTitle {
    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("ស្ថាបត្យកម្ម និងការរចនា",
          style: TextStyle(
            fontFamily: 'NotoSansKhmer'
          ),),
          Icon(Icons.navigate_next)
        ],
    ),);
  }

  Widget get _firstMenuList {
    List<String> firstMenuData = List.generate(10, (i) => "$i").toList();

    final image = Image.asset('assets/images/menu1.png');

    final colMenu = firstMenuData.map((i) {
      return Card(
        elevation: 3,
        child: image,
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: colMenu,
      ),
    );
  }

    Widget get _secondMenuTitle {
      return Padding(
        padding: EdgeInsets.only(right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("មហាវិទ្យាល័យព័ត៌មានវិទ្យា"),
            Icon(Icons.navigate_next)
          ],
        ),
      );
  }

  Widget get _secondMenuList {
    List<String> firstMenuData = List.generate(10, (i) => "$i").toList();

    final image = Image.network(
      'https://ppua.edu.kh/wp-content/uploads/2024/08/smartmockups_lzw5btew-2-1482x635.jpg',
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    );

    final colMenu = firstMenuData.map((i) {
      return Card(
        elevation: 3,
        child: image,
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: colMenu,
      ),
    );
  }

}
