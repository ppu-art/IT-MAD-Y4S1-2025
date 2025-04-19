import 'package:flutter/material.dart';
import 'package:mad/constant/app_color.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
        _firstMenuTitle,
        _firstMenuList
      ],
    );
  }

  Widget get _slider {
    return Image.asset('assets/images/slide.png',
    // width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,);
  }

  Widget get _menu {
    List<String> dataMenu = ["Faculty","Student", "Subject","Teacher","Alumni"];

    final colMenu = dataMenu.map((i) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Icon(Icons.shopping_cart),
              Text("$i")
            ],
          ),
        ),
      );
    }).toList();

    final rowMenu = Row(
      children: colMenu,
    );

    return rowMenu;
  }

  Widget get _firstMenuTitle {
    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("ស្ថាបត្យកម្ម និងការរចនា"),
          Icon(Icons.navigate_next)
        ],
    ),);
  }

  Widget get _firstMenuList {
    List<String> firstMenuData = List.generate(10, (i) => "$i").toList();
    final image = Image.asset('assets/images/menu1.png');

    final colMenu = firstMenuData.map((i){
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
