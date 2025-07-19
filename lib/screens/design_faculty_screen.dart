import 'package:flutter/material.dart';

class DesignFacultyScreen extends StatefulWidget {
  List<String>? designFacultyItems = [];

  DesignFacultyScreen({super.key, this.designFacultyItems});

  @override
  State<DesignFacultyScreen> createState() => _DesignFacultyScreenState();
}

class _DesignFacultyScreenState extends State<DesignFacultyScreen> {
  List<String>? designFacultyItems = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)?.settings.arguments as List<String>;
    print(items);
    setState(() {
      designFacultyItems = items;
    });
    return Scaffold(appBar: _appBar, body: _body);
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      title: Text("Design Faculty"),
      centerTitle: true,
      actions: [Icon(Icons.search), Icon(Icons.more_vert)],
    );
  }

  Widget get _body {
    List<Widget> items =
        designFacultyItems!.map((item) {
          return Card(child: ListTile(title: Text("$item")));
        }).toList();

    return ListView(children: items);
  }
}
