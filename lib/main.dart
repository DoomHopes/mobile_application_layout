import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample app',
      theme: ThemeData(
        primarySwatch: Colors.greenAccent[100],
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoriteCount = 87654;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Some Text'),
    );
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          //_buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('Рейтинг'),
                  ),
                  Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text('Кнопочки'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('Описание'),
                  )
                ],
              ),
            ),
          )
        ],
      );
}
