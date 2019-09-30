import 'package:flutter/material.dart';
import 'package:learn_flutter/model/news.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First APP'),
      ),
      body: HomePage(),
    ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Image.network(data[index].urlToImage),
              Text(
                data[index].title,
                style: Theme.of(context).textTheme.title.apply(
                  color: Colors.white,
                  backgroundColor: Colors.black54
                )
              )
            ],
          ),
        );
      },
    );
  }
}
