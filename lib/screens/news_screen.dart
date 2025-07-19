import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar, body: Center(child: Text("Faculty")));
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      title: Text("News"),
      centerTitle: true,
      actions: [Icon(Icons.search), Icon(Icons.more_vert)],
    );
  }
}
