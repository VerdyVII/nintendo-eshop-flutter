import 'package:flutter/material.dart';

class Games {
  String imagePath;
  String name;

  Games(this.imagePath, this.name);
}

List<Games> games = [
  Games('lib/images/celeste-switch-hero.jpg', 'Celeste'),
  Games('lib/images/3202078-1473116078-The-L.jpg', 'Breath Of The Wild'),
  Games('lib/images/mario-kart-8-deluxe-switch-hero.jpg', 'Mario Kart 8 Deluxe')
];

class GameCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: games.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                          games[index]?.imagePath ??
                              'lib/images/Nintendo_Switch_Logo.png',
                          fit: BoxFit.fill)));
            },
          ),
        ));
  }
}
