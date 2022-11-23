import 'package:flutter/material.dart';
import '../widgets/fondo_detalles.dart';

class DetallesPage extends StatelessWidget {
  const DetallesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoDetalles(
        child: ListView(
          children: <Widget> [
            IconButton(
              alignment: Alignment.topLeft,
            icon: const Icon(Icons.arrow_back, color: Colors.white,),
            iconSize: 35,
            onPressed: (() {
              Navigator.pushNamed(context, 'principal');
            }),
          ),
            SizedBox(height: 50,),
            cardPrincipal(),
            cardDetalles(),
            cardImages(),
            cardImages(),
            cardUbicacion(),
            cardComentarios(context)

          ],
        ),
      ),
    );
  }
}

Card cardPrincipal() {
  return Card(
    elevation: 0.0,
    margin: EdgeInsets.all(10),
    child: Column(
      children: 
      [Container(   
          child: FadeInImage(
            image: NetworkImage('https://mediaim.expedia.com/destination/1/c2c68deb1b2fd4103d246f17ec309fc6.jpg'),
            placeholder: AssetImage('assets/Loading.gif'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox( height: 30,),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
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
          child: Row(
            children: [
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
            ],
            
          ),
          

        ),
        SizedBox( height: 8,),
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
      ],
    ),
  );
}

Card cardDetalles() {
    return Card(
    elevation: 0.0,
    margin: EdgeInsets.all(10),
    child: Column(
      children: 
      [Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Ideal para',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
          ),
        ),
      SizedBox(height: 5),
     Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Durante tus vacaciones en Cancún o Isla Mujeres podrás trasladarte vía marítima de manera segura a bordo de cualquiera de los barcos de Ultramar en los que podrás disfrutar un servicio de lujo y personalizado. No pierdas la oportunidad de admirar la impresionante vista desde las cubiertas al aire libre mientras observas las diferentes tonalidades azul turquesa del mar Caribe. Asimismo, a bordo de los barcos podrás comprar bebidas y botanas mientras disfrutas del viaje a tu destino.',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
             ),
          ),
        ),
      ]),
    );
  }

  Card cardImages(){
    return Card(
    elevation: 1.0,
    margin: EdgeInsets.all(10),
    child: Row(
      children: 
      [
        SizedBox(width: 15,),

        Container( 
              alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 3),
        height: 100,
        width: 100,  
          child: FadeInImage(
            image: NetworkImage('https://d3fky3asuafjls.cloudfront.net/6lDr4dJ4ALjGcUsUBC78MFeZIZ4=/fit-in/720x440/filters:fill(000)/00/40/64/00406404.jpg'),
            placeholder: AssetImage('assets/Loading.gif'),
            fit: BoxFit.cover,
          ),
      ),
      SizedBox(width: 20,),
       Container(
        alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 3),
        height: 100,
        width: 100,
        child: FadeInImage(image: NetworkImage('https://d3fky3asuafjls.cloudfront.net/S55xcsdXh-pPjej0eI5kpiCPtCw=/fit-in/720x440/filters:fill(000)/00/40/64/00406401.jpg'),
        placeholder: AssetImage('assets/Loading.gif'),
        fit: BoxFit.cover,
        ),
      ),
    SizedBox(width: 20,),

       Container(
            alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 3),
        height: 100,
        width: 100,
        child: FadeInImage(image: NetworkImage('https://d3fky3asuafjls.cloudfront.net/S55xcsdXh-pPjej0eI5kpiCPtCw=/fit-in/720x440/filters:fill(000)/00/40/64/00406401.jpg'),
        placeholder: AssetImage('assets/Loading.gif'),
        fit: BoxFit.cover,
        ),
      ),
             
      ]),
    );
  }
  Card cardUbicacion() {
    return Card(
    elevation: 0.0,
    margin: EdgeInsets.all(10),
    child: Column(
      children: 
      [Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Ubicacion',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
          ),
        ),
      SizedBox(height: 5),
     Row(
       children: [
        Container(
           child: Icon(Icons.place, color: Colors.black,),
        ),
         Container(
              child: Text(
                'López Portillo Calle 49, Puerto Juarez, Juárez, 77525 Cancún, Q.R.',
                 textAlign: TextAlign.left,
                 style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w200,
                 ),
              ),
            ),
       ],
     ),
      ]),
    );
  }


Card cardComentarios(BuildContext context) {
    return Card(
    elevation: 0.0,
    margin: EdgeInsets.all(10),
    child: Column(
      children: 
      [Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Reseñas',
             textAlign: TextAlign.left,
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
          ),
        ),
      SizedBox(height: 5),
     Row(
       children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.account_circle, color: Colors.black,),
        ),
         Column(
          
           children: [
             Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    'Luis',
                     textAlign: TextAlign.left,
                     style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                     ),
                  ),
                ),
                Container(child: Row(
              children: [
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
              Container(child: Icon(Icons.star, color:Colors.yellow)),
            ], 
                 
                ),),

                Container(child: 
                Text('Me encanto el lugar'),),
           ],
         ),
         SizedBox(width: 140),
          IconButton(
              alignment: Alignment.topRight,

            icon: const Icon(Icons.add_circle_outline_rounded, color: Color.fromARGB(255, 124, 207, 218),
            size: 50,
            ),
            onPressed: (() {
              Navigator.pushNamed(context, 'experiencia');
            }),
          ),
       ],
     ),
     SizedBox(height: 10),
      ]),
    );
  }

