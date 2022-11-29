import 'package:flutter/material.dart';
import 'package:viajes_app/widgets/fondo_principal.dart';

class PrincipalPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoPrincipal(
        child: ListView(
          children: <Widget> [
            SizedBox(height: 6,),
            IconButton(
              alignment: Alignment.topRight,
            icon: const Icon(Icons.account_circle_rounded, color: Color.fromARGB(255, 0, 0, 0),
            size: 55,
            ),
            onPressed: (() {
              Navigator.pushNamed(context, 'login');
            }),
          ),
            SizedBox(height: 6,),
            cardPrincipal(context),
            SizedBox(height: 6,),
            
             IconButton(
              alignment: Alignment.topRight,

            icon: const Icon(Icons.add_circle_outline_rounded, color: Color.fromARGB(255, 65, 168, 228),
            size: 70,
            ),
            onPressed: (() {
              Navigator.pushNamed(context, 'destino');
            }),
          ),
          ],
        ),
      ),
    );
  }
}

Card cardPrincipal(BuildContext context) {
  return Card(
    margin: EdgeInsets.all(15),
    elevation: 10.0,
    child: Column(
      children: [
        Container(
          //height: 200,
          child: FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Isla_Mujeres_aerial_%2829729604048%29.jpg/1200px-Isla_Mujeres_aerial_%2829729604048%29.jpg'),
            placeholder: AssetImage('assets/Loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox( height: 10,),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Ferry Puerto Juárez (Cancún), México',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
          ),
        ),
        SizedBox( height: 10,),

        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Isla Mujeres',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(216, 184, 174, 174)
             ),
          ),
        ),
        SizedBox( height: 8,),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            '15-20 Octubre',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(216, 184, 174, 174)
             ),
          ),
        ),
        SizedBox( height: 8,),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            '3,000 MXN noche',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
             ),
          ),
        ),
        ButtonBar(
          children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minWidth: 100.0,
              height: 40.0,
              onPressed: (() {
                Navigator.pushNamed(context, 'detalles');
              }),
              color: Colors.lightBlue,
              child: Text('Detalles', style: TextStyle(color: Colors.white)),
  ),
          ],
        ),
      ],
    ),
  );
}