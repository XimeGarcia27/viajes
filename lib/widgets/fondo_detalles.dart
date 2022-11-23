import 'dart:io';

import 'package:flutter/material.dart';

import '../pages/principal_page.dart';

class FondoDetalles extends StatelessWidget {

  final Widget child;

  const FondoDetalles({Key? key, required this.child})
  : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Container(
      //color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          this.child,
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      
      height: size.height * 0.11,
      width: double.infinity,
      //color: Colors.indigo,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 65, 168, 228),
            Color.fromARGB(255, 65, 168, 228),
          ]
        ),
      ),
    );
  }
}




