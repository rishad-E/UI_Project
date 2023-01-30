import 'package:flutter/material.dart';

Widget block(
    {required text1,required text2,required text3,required text4,
     required imageblock
    }
    ) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
    child: Container(
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 243, 236, 236), borderRadius: BorderRadius.circular(5)),
      height: 140,
      width: 400,
      padding: const EdgeInsets.fromLTRB(10,5, 10, 0),
      child: Column(
        children: [
          Row(
            children: [
              Container( height: 80, width: 80,
              child: Image.asset(imageblock,fit: BoxFit.cover,),
               ),
              const SizedBox(width: 10,),
              Container( height: 80, width: 150,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1,style:const TextStyle(fontSize: 18),),
                  Text(text2,style:const TextStyle(fontSize: 13)),
                  Text(text3,style:const TextStyle(fontSize: 18)),
                  Text(text4,style:const TextStyle(fontSize: 13,color: Colors.green))
                  ],
              ),
              ),
              const SizedBox(width: 15,),
              Container( height: 80, width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:const [
                  Icon(Icons.more_vert),
                  Switch(
                    value: true,
                    onChanged: null,
                    inactiveTrackColor: Color.fromARGB(255, 174, 206, 232),
                    inactiveThumbColor: Colors.blue,
                     ),
                 ],
              ),
              ),
            ],
          ),
          const Divider( thickness: 1, indent: 8, endIndent: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Icon(Icons.share_outlined),
              Text('Share Product')
            ],
          )
        ],
      ),
    ),
  );
}
