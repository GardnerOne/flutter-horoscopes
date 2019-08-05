import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color primary      = Color(0xff024873);
final Color primaryMuted = Color(0xff024059);
final Color primaryDark  = Color(0xff011c26);
final Color accent       = Color(0xfff29f80);
final Color accentLight  = Color(0xfff2f2f2);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Horoscopes',
      home: MyHomePage(title: 'AI Horoscopes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: primary,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.0, 0.06, 0.9],
            colors: [
              Colors.black,
              primaryDark,
              primary
            ],
          )
        ),
      ),
    );
  }
}
