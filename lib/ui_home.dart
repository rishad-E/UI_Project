 import 'package:flutter/material.dart';
import 'package:ui_projects/ui_five/screen_five.dart';
import 'package:ui_projects/ui_four/screen_four.dart';
import 'package:ui_projects/ui_one/screen_one.dart';
import 'package:ui_projects/ui_six/screen_six.dart';
import 'package:ui_projects/ui_three/screen_three.dart';
import 'package:ui_projects/ui_two/screen_two.dart';

class UiHomescreen extends StatelessWidget {
  const UiHomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('UI GALLERY'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [ Colors.cyan, Colors.indigo,])),
        child: Column(
          children: [
            Container(  height: 300,   width: 400,
              child: Container(                  
                  child: Image.asset( 'lib/assets/ui_image.jpg', width: 200, height: 200,  ),
                  ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton( onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ScreenOneUi(),));
                          },child: const Text(' UI   one')),
                      ElevatedButton( onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SCreenTwoUi(),));
                          },child: const Text('UI  two')),
                      ElevatedButton( onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScreenThreeUi(),));
                      }, child: const Text('UI three')),
                      ElevatedButton( onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>ScreenFourUi(),));
                      }, child: const Text('UI four')),
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScreenFiveUi(),));
                      }, child: const Text('UI five')),
                      ElevatedButton( onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ScreenSixUi(),));
                      }, child: const Text('UI  six')),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
