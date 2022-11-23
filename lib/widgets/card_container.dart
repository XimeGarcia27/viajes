import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  
  final Widget child;

  const CardContainer({Key? key, required this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 200, 203, 204),//card login, ingresar info
            ),
            child: this.child,
      ),
    );
  }
}