import 'package:flutter/material.dart';
import 'package:ui_projects/ui_six/blocks_six.dart';

class ScreenSixUi extends StatelessWidget {
  const ScreenSixUi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:const Text('Catalogue', style: TextStyle(color: Colors.white)),
            actions: const [
              Icon(Icons.search),
              Padding(padding: EdgeInsets.all(10))
            ],
            bottom: const TabBar(tabs: [
              Tab(text: 'Products', ),
              Tab(text: 'Catogoris', )
            ]),
          ),
          body: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            color: const Color.fromARGB(255, 221, 215, 215),
            child: ListView(
              children: [
                block(
                    text1: 'Couch|potato|Men',text2: '1 Piece', text3: '₹799',text4: 'In Stock',imageblock: 'lib/assets/mencouch.jpg'),
                block(
                    text1: 'Couch|women...', text2: '1 Piece', text3: '₹799',text4: 'In Stock',imageblock: 'lib/assets/womencouch.jpg'),
                block(
                    text1: 'Mug|Explore',text2: '1 Piece',text3: '₹399',text4: 'In Stock',imageblock: 'lib/assets/mug.jpg'),
                block(
                    text1:'ComboBlast1|..', text2:'1 Piece', text3:'₹699', text4: 'In Stock', imageblock:'lib/assets/mugcombo2.png'),
                block(
                    text1:'Mug| orchard', text2:'1 Piece', text3:'₹449', text4:'In Stock', imageblock: 'lib/assets/flower.jpg'),
                block(
                    text1:'ComboBlast2|E..', text2:'1 Piece', text3:'₹599', text4:'In Stock', imageblock: 'lib/assets/mugcombo2.png'),
                block(
                    text1:'I See Combo Pack', text2:'1 Piece', text3: '₹1299', text4:'In Stock', imageblock:'lib/assets/combotshirt.jpg'),
                block(
                    text1:'Kids Combo', text2:'1 Piece', text3:'₹1199', text4:'In Stock', imageblock: 'lib/assets/kidscombo.png')
              ],
            ),
          )),
    );
  }
}
