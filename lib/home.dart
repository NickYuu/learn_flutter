import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/01.first.dart';

import 'app_strings.dart';

class Home extends StatelessWidget {
  final List<PageData> pages = [
    PageData('first', FirstPage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.of(context).title()),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListItem(pages[index]);
//          return ListTile(title: Text('asd'),);
        });
  }
}

class PageData {
  final String title;
  final Widget destination;

  PageData(this.title, this.destination);
}

class ListItem extends StatelessWidget {
  final PageData pageData;

  ListItem(this.pageData)
      : assert(pageData != null, "'pageData' must not be null.");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(pageData.title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pageData.destination),
            );
          },
        ),
        Divider(),
      ],
    );
  }
}
