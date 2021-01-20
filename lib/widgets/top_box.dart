import 'package:flutter/material.dart';
import 'package:eshop/main.dart';

class TopBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/images/Nintendo_Switch_Logo.png',
            width: 65.0,
            height: 75.0,
          ),
          color: red,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 14.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: red,
          ),
          child: Text("Enjoy the home \nconsole gaming \nexperience",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 110.0,
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Center(
              child: Column(children: <Widget>[
                Container(
                    child: FlatButton(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 45.0, right: 45.0, bottom: 15.0),
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      textColor: Colors.white,
                      color: lightRed,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(1),
                          offset: Offset(0, 3),
                        ),
                      ],
                    )),
              ]),
            ),
          ),
        ),
      ),
    ]);
  }
}
