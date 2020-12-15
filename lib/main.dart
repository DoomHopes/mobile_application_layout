import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample app',
      theme: ThemeData(primaryColor: Colors.purple),
      home: PersonWidget(),
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
        title: Text('Котик'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildRating(),
                  ),
                  Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: _buildAction(),
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

  Widget _buildTopImage() => Container(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Image.asset(
            //'assets/images/Orix.png',
            'assets/images/photo_2020-12-09_03-42-59.jpg',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRating() => ListTile(
        title: Text(
          'Котик',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text('Красивый котик'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoriteWidget(),
          ],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton('Серый', Icons.star, Colors.grey),
          _buildButton('Рыжий', Icons.star, Colors.orange),
          _buildButton('Коричневый', Icons.star, Colors.brown),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
}
