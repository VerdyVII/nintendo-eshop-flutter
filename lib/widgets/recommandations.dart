import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100.0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                    'lib/images/SQ_NSwitch_HyruleWarriorsAgeOfCalamity_frFR_image500w.jpg',
                    fit: BoxFit.fitHeight)),
          ),
          Container(
            height: 100.0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                    'lib/images/SQ_NSwitch_LaytonsMysteryJourneyKatrielleAndTheMillionairesConspiracyDeluxeEdition_frFR_image500w.jpg',
                    fit: BoxFit.fitHeight)),
          ),
          Container(
            height: 100.0,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                    'lib/images/SQ_NSwitch_SuperSmashBrosUltimate_02_image500w.jpg',
                    fit: BoxFit.fitHeight)),
          ),
        ],
      ),
    );
  }
}
