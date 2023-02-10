import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaruat_menu/screens/details_page.dart';

import '../models/meals.dart';

class DishesPage extends StatefulWidget {
  const DishesPage({Key? key}) : super(key: key);

  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {
  @override
  bool _isItemSelected = false;
  int _SelectedItemIndex = 0;

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _isItemSelected
            ? setState(() {
                _isItemSelected = false;
              })
            : exit(0);
        return Future.value(false);
      },
      child: SafeArea(
        child: _isItemSelected
            ? DetailsPage(_SelectedItemIndex)
            : Scaffold(
                body: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Expanded(
                            child: const Text(
                                "Bizning restoranimizga tashrif buyurganingizdan xursanmiz")),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Expanded(
                      child: GridView.builder(
                          itemCount: 7,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return meal(Meal.meals[index], context, index);
                          }),
                    ),
                  ],
                ),
              )),
      ),
    );
  }

  Widget meal(Meal meal, context, index) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
            elevation: 42,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 0.56,
              decoration: BoxDecoration(
                  color: Color(meal.bannerColor!),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.0088,
                          color: Color(0xff00195C),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        Text("by Uzbekistan")
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      meal.name!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Стоимость:",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff52616B)),
                        ),
                        Text(meal.cost!,
                            style: const TextStyle(
                                fontSize: 13, color: Color(0xff52616B)))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icn.png',
                              width: 14,
                              height: 16,
                            ),
                            Text(meal.time!,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff11263C)))
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/ing.png',
                              width: 12,
                              height: 14,
                            ),
                            Text(meal.ingCount.toString(),
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xff11263C)))
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Image.asset(
                              'assets/images/plus.png',
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isItemSelected = true;
                                _SelectedItemIndex = index;
                              });
                            },
                            child: Text("Подробнее"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: -70,
              right: 32,
              child: Image.asset(
                meal.imageUrl!,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              ))
        ]);
  }
}
