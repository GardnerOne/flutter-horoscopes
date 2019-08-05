import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color primary      = Color(0xff024873);
final Color primaryMuted = Color(0xff024059);
final Color primaryDark  = Color(0xff011c26);
final Color accent       = Color(0xfff29f80);
final Color accentLight  = Color(0xfff2f2f2);

// AdMob
/*
 * Banner - Rectangular ads that occupy a portion of an app's layout; can be refreshed automatically after a period of time.
 * Interstitial - Full-page ad format that appears at natural breaks and transitions, such as level completion.
 * Rewarded - Ad format that rewards users for watching ads. Great for monetising free-to-play users.
 * Native advanced - Customisable ad format that matches the look and feel of your app; appears inline with app content.
 * 
 * 1. Complete the instructions in the [Google Mobile Ads SDK guide](https://developers.google.com/admob/android/quick-start?hl=en-GB#import_the_mobile_ads_sdk)
 * 2. Follow the [interstitial implementation guide](https://developers.google.com/admob/android/interstitial?hl=en-GB) to integrate the SDK. You'll specify ad type and placement when you integrate the code using the ad unit ID
 */

final adType = 'interstitial';
final name = 'AI Horoscopes';
final appId = 'ca-app-pub-9316305210151016~7303149109';
final adUnitId = 'ca-app-pub-9316305210151016/7079787823';

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
        leading: new Builder(
          builder: (context) {
            return new IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
          }),
        title: Text(widget.title),
        backgroundColor: primary,
        elevation: 0,
      ),
      drawer: _drawer(),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
        elevation: 1.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Ops!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Nothing here yet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: primary,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.star),
                  SizedBox(width: 10,),
                  Text("Unlock Premium", style: TextStyle(fontSize: 17.0),)
                ],
              ),
              onTap: () {
                // TODO: unlock premium
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.ondemand_video),
                  SizedBox(width: 10,),
                  Text("Watch an ad", style: TextStyle(fontSize: 17.0),)
                ],
              ),
              onTap: () {
                // TODO: show ad
              },
            ),
          ],
        ),
      );
  }
}
