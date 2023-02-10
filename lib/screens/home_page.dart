import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:restaruat_menu/screens/dishes_page.dart';
import 'package:restaruat_menu/screens/salads_page.dart';

import '../models/lang.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  int _selectedIndex = 0;

  List<Widget> _pages = [
    DishesPage(),
    SaladsPage(),
    SaladsPage(),
    SaladsPage(),
  ];

  List<Lang> _langs=[
   Lang("uz", true),
    Lang("ru", false),
    Lang("en", false),

  ];
   int _activeLangIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          NavigationRail(
            leading: Column(

              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                ToggleButtons(
                  borderColor: Colors.transparent,
                  fillColor: Colors.transparent,
                  direction: Axis.vertical,
                    children: [
                      langButton(_langs[0]),
                      langButton(_langs[1]),
                      langButton(_langs[2]),

                    ],
                    onPressed: (int index){
                    setState(() {
                      _langs.forEach((e) {e.isActive=false;});
                      _langs[index].isActive=true;
                    });
                    },
                    isSelected: _langs.map((e) => e.isActive).toList(),
                ),

              ],
            ),
            minWidth: MediaQuery.of(context).size.width * 0.14,
            groupAlignment: 0.5,
            selectedLabelTextStyle: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height*0.025,
            ),
            unselectedLabelTextStyle: TextStyle(
              color: Colors.white70,
              fontSize: MediaQuery.of(context).size.height*0.02,
            ),
            labelType: NavigationRailLabelType.all,
            backgroundColor: Color(0xFF2A5270),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(quarterTurns: -1, child: Text("Ovqatlar")),
              ),
              NavigationRailDestination(
                icon: Icon(null),
                label: RotatedBox(quarterTurns: -1, child: Text("Salatlar")),
              ),
              NavigationRailDestination(
                icon: Icon(null),
                label: RotatedBox(quarterTurns: -1, child: Text("Ichimliklar")),
              ),
              NavigationRailDestination(
                icon: Icon(null),
                label: RotatedBox(quarterTurns: -1, child: Text("FastFood")),
              ),
            ],
          ),
          Expanded(child: _pages[_selectedIndex])
        ],
      )),
    );
  }
  Widget langButton(Lang lang){
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.08,
      child: Center(child: Text(lang.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

      decoration: BoxDecoration(
      shape: BoxShape.circle,

        color: lang.isActive ? Color(0xff206498):Color(0xff2A5270)
      ),
    );
  }
}
