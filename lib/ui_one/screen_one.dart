import 'package:flutter/material.dart';

class ScreenOneUi extends StatelessWidget {
  const ScreenOneUi({super.key});

  Widget dukaanTile({ String? dukaanText, dukaanIcon, dukaanIcon2}) {
    return ListTile(
      leading: dukaanIcon,
      title: Text(dukaanText!, style: const TextStyle(fontSize: 18,)),
      trailing: dukaanIcon2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text('Additional Information',style:TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          dukaanTile(
            dukaanText: 'Share  Dukaan  App',
            dukaanIcon: const Icon(Icons.share_outlined),
            dukaanIcon2: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          dukaanTile(
            dukaanText: 'Change Language',
            dukaanIcon: const Icon(Icons.language_outlined),
            dukaanIcon2: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          dukaanTile(
            dukaanText: 'Whatsapp Chat Support',
            dukaanIcon: const Icon(Icons.whatsapp_outlined),
            dukaanIcon2: const Switch(
              value: true,
              onChanged: null,
              inactiveTrackColor: Color.fromARGB(255, 174, 206, 232),
              inactiveThumbColor: Colors.blue,
            ),
          ),
          dukaanTile(
            dukaanText: 'Privacy Policy',
            dukaanIcon: const Icon(Icons.lock_outlined),
          ),
          dukaanTile(
            dukaanText: 'Rate us',
            dukaanIcon: const Icon(Icons.star_outline),
          ),
          dukaanTile(
            dukaanText: 'Sign Out',
            dukaanIcon: const Icon(Icons.logout),
          ),
          const SizedBox(height: 350,),
          const Text('Version',style: TextStyle(color: Colors.grey),),
          const Text('2.42',style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
