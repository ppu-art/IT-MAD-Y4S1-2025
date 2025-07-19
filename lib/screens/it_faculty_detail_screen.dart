import 'package:flutter/material.dart';

class ItFacultyDetailScreen extends StatefulWidget {
  const ItFacultyDetailScreen({super.key});

  @override
  State<ItFacultyDetailScreen> createState() => _ItFacultyDetailScreenState();
}

class _ItFacultyDetailScreenState extends State<ItFacultyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context, "The value from screen 2");
            Navigator.of(context).pop("The value from screen 2");
          },
          child: Text("Back to Screen 1"),
        ),
      ),
    );
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      title: Text("IT Faculty Detail"),
      centerTitle: true,
      actions: [Icon(Icons.favorite)],
    );
  }
}
