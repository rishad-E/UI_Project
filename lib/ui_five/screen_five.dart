import 'package:flutter/material.dart';
import 'package:ui_projects/ui_five/additional_five.dart';
import 'package:ui_projects/ui_five/customer_five.dart';
import 'package:ui_projects/ui_five/date_five.dart';
import 'package:ui_projects/ui_five/item_five.dart';
import 'package:ui_projects/ui_five/total_five.dart';

class ScreenFiveUi extends StatelessWidget {
  const ScreenFiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text( 'Order #1688068',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            date(),  
            const Divider(thickness: 1,indent: 8,endIndent: 15,),
            item(),
            const Divider(thickness: 1,indent: 8,endIndent: 15,),
            total(),
            const Divider(thickness: 1,indent: 8,endIndent: 15,),
            customer(),
            const Divider(thickness: 1,indent: 8,endIndent: 15,),
            additional()
          ],
        ),
      ),
    );
  }
}
