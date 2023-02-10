import 'package:flutter/material.dart';

import '../models/meals.dart';

class DetailsPage extends StatelessWidget {
  final int selectedItemIndex;

  DetailsPage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: mybody(context),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/splash.png'))),
    );
  }

  Widget mybody(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: size.height * 0.1, right: size.width * 0.12),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          mealdata(context),
          Positioned(
              top: size.height * (-0.072),
              right: size.width * (-0.08),
              child: Image.asset(
                Meal.meals[selectedItemIndex].imageUrl!,
                width: size.width * 0.38,
              ))
        ],
      ),
    );
  }

  Widget mealdata(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            Meal.meals[selectedItemIndex].name!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/icn.png",
                      width: size.width * 0.04),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(Meal.meals[selectedItemIndex].time!)
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/ing.png",
                      width: size.width * 0.03),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(Meal.meals[selectedItemIndex].ingCount.toString())
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/kkl.png",
                    width: size.width * 0.03,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text("448kal")
                ],
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            Meal.meals[selectedItemIndex].data!,
            style: TextStyle(height: 1.4),
          )
        ],
      ),
    );
  }
}
