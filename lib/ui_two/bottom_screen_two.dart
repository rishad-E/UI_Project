import 'package:flutter/material.dart';

Widget bottomScreenTwo() {
  return BottomNavigationBar(
    showUnselectedLabels: true,
    selectedItemColor:Colors.blue,
    unselectedItemColor: Colors.grey ,
    currentIndex: 3,
    items: const [
    BottomNavigationBarItem(
      icon: Icon( Icons.home_outlined, ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.grid_view,),
      label: 'Orders',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_mall_outlined,),
      label: 'Products',
    ),BottomNavigationBarItem(
      icon: Icon(Icons.library_books_outlined,),
      label: 'Manage',
    ),BottomNavigationBarItem(
      icon: Icon(Icons.person,),
      label: 'Account',
    ),
  ]);
}
