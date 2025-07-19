
import 'package:flutter/material.dart';

class ItFacultyScreen extends StatefulWidget {
  const ItFacultyScreen({super.key});

  @override
  State<ItFacultyScreen> createState() => _ItFacultyScreenState();
}

class _ItFacultyScreenState extends State<ItFacultyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  PreferredSizeWidget get _appBar{
    return AppBar(
      title: Text("IT Faculty"),
    );
  }

  Widget get _body {
    return Center(
      child: Text("It Faculty"),
    );
  }
}