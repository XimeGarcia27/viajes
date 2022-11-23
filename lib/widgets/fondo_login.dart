import 'package:flutter/material.dart';

class FondoLogin extends StatelessWidget {

  final Widget child;

  const FondoLogin({Key? key, required this.child})
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
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 0),
              width: double.infinity,
              child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text('Travel Xisa',
                    style: Theme.of(context).textTheme.headline5,
                    
                    ),
                    Text('Todo tu viaje en la palma de tu mano'),
                    SizedBox(height: 20,
                    ),
                  ],
                ),
            ),
          ),
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
      height: size.height * 0.3,
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




