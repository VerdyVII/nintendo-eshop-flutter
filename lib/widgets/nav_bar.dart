import 'package:eshop/main.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBar createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  bool isPressed1 = true;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  void _toggleFocus1() {
    setState(() {
      if (!isPressed1) {
        isPressed1 = true;
        isPressed2 = false;
        isPressed3 = false;
        isPressed4 = false;
      }
    });
  }

  void _toggleFocus2() {
    setState(() {
      if (!isPressed2) {
        isPressed1 = false;
        isPressed2 = true;
        isPressed3 = false;
        isPressed4 = false;
      }
    });
  }

  void _toggleFocus3() {
    setState(() {
      if (!isPressed3) {
        isPressed1 = false;
        isPressed2 = false;
        isPressed3 = true;
        isPressed4 = false;
      }
    });
  }

  void _toggleFocus4() {
    setState(() {
      if (!isPressed4) {
        isPressed1 = false;
        isPressed2 = false;
        isPressed3 = false;
        isPressed4 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            child: IconButton(
              icon: Icon(Icons.home),
              color: isPressed1 ? Colors.white : Colors.white54,
              iconSize: 32.0,
              onPressed: _toggleFocus1,
            ),
          ),
          IconButton(
            icon: Icon(Icons.search_outlined),
            color: isPressed2 ? Colors.white : Colors.white54,
            iconSize: 32.0,
            onPressed: _toggleFocus2,
          ),
          IconButton(
            icon: Icon(Icons.favorite_outline_outlined),
            color: isPressed3 ? Colors.white : Colors.white54,
            iconSize: 32.0,
            onPressed: _toggleFocus3,
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            color: isPressed4 ? Colors.white : Colors.white54,
            iconSize: 32.0,
            onPressed: _toggleFocus4,
          ),
        ]),
        width: MediaQuery.of(context).size.width,
        height: 70.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: bottomBlack.withOpacity(0.1), offset: Offset(0, -5))
          ],
          color: bottomBlack,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(22.0),
            bottomRight: Radius.circular(22.0),
          ),
        ),
      ),
    ));
  }
}
