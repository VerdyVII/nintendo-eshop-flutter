import 'package:eshop/widgets/game_selector.dart';
import 'package:eshop/widgets/nav_bar.dart';
import 'package:eshop/widgets/recommandations.dart';
import 'package:eshop/widgets/top_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(4, 131, 184, .1),
  100: Color.fromRGBO(4, 131, 184, .2),
  200: Color.fromRGBO(4, 131, 184, .3),
  300: Color.fromRGBO(4, 131, 184, .4),
  400: Color.fromRGBO(4, 131, 184, .5),
  500: Color.fromRGBO(4, 131, 184, .6),
  600: Color.fromRGBO(4, 131, 184, .7),
  700: Color.fromRGBO(4, 131, 184, .8),
  800: Color.fromRGBO(4, 131, 184, .9),
  900: Color.fromRGBO(4, 131, 184, 1),
};
MaterialColor red = MaterialColor(0xFFFF5248, color);
MaterialColor lightRed = MaterialColor(0xFFFF766E, color);
MaterialColor bottomBlack = MaterialColor(0xFF1C1D1C, color);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nintendo Switch eShop',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins'),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
              ),
            ),
            TopBox(),
            Padding(padding: const EdgeInsets.only(top: 35.0)),
            Container(
                padding: const EdgeInsets.only(left: 30.0),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Featured',
                        style: TextStyle(
                            color: red,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0)),
                    TextSpan(
                        text: ' Games',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0))
                  ]),
                )),
            SizedBox(
              height: 8.0,
            ),
            GameCarousel(),
            SizedBox(
              height: 20.0,
            ),
            Container(
                padding: const EdgeInsets.only(left: 30.0),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Recommended',
                        style: TextStyle(
                            color: red,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0)),
                    TextSpan(
                        text: ' for you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0))
                  ]),
                )),
            SizedBox(
              height: 8.0,
            ),
            Recommendations(),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
