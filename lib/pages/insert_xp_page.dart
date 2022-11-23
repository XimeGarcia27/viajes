import 'package:flutter/material.dart';
import 'package:viajes_app/widgets/fondo_login.dart';
import 'package:viajes_app/widgets/fondo_principal.dart';

class InsertarExperienciaPage extends StatelessWidget {
  const InsertarExperienciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoPrincipal(
        child: ListView(
          children: <Widget>[
             IconButton(
              alignment: Alignment.topLeft,
            icon: const Icon(Icons.arrow_back, color: Colors.white,),
            iconSize: 35,
            onPressed: (() {
              Navigator.pushNamed(context, 'detalles');
            }),
          ),
            SizedBox(
              height: 90,
            ),
            cardPrincipal(context),
          ],
        ),
      ),
    );
  }
}

Card cardPrincipal(BuildContext context) {
  return Card(
    margin: EdgeInsets.all(25),
    elevation: 10.0,
    child: Column(
      children: [
        //Contenedor del titulo
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Text(
            'Cuéntanos tu experiencia.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Inicio
        SizedBox(
          height: 15,
        ),

        //Estrellas
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const <Widget>[
              Expanded(
                flex: 4,
                child: Text(
                  '¿Qué calificación le das?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Icon(Icons.star_border_rounded,
                    size: 40, color: Colors.yellow),
              ),
              Expanded(
                child: Icon(Icons.star_border_rounded,
                    size: 40, color: Colors.yellow),
              ),
              Expanded(
                child: Icon(Icons.star_border_rounded,
                    size: 40, color: Colors.yellow),
              ),
              Expanded(
                child: Icon(Icons.star_border_rounded,
                    size: 40, color: Colors.yellow),
              ),
              Expanded(
                child: Icon(Icons.star_border_rounded,
                    size: 40, color: Colors.yellow),
              ),
            ],
          ),
        ),
        //espacio
        SizedBox(
          height: 15,
        ),

        //Contenedor de pedir el nombre de la experiencia
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            '¿Cómo llamarías a tu experiencia?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.length < 1) {
                return 'El nombre de tu experiencia es obligatorio';
              }
            },
            decoration: InputDecoration(
                hintText: 'Increíble, no dormimos nada...',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 65, 168, 228),
                  width: 2,
                )),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 65, 168, 228),
                    width: 4,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.grey,
                )),
          ),
        ),
        //espacio
        SizedBox(
          height: 15,
        ),

        //Contenedor de cuentanos un poco más
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Cuéntanos un poco más...',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            maxLines: 12,
            textAlign: TextAlign.justify,
            validator: (value) {
              if (value == null || value.length < 1) {
                return 'La descripción es obligatoria';
              }
            },
            decoration: InputDecoration(
                hintText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 65, 168, 228),
                  width: 2,
                )),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 65, 168, 228),
                    width: 4,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.grey,
                )),
          ),
        ),

        //espacio
        SizedBox(
          height: 15,
        ),
        // fin del espacio 4
        //Fin del contenedor

//Inicia barra de pedir datos 2
//Costo
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const <Widget>[
              Expanded(
                child: Text(
                  '¿Gastaste mucho?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.money_off_csred,
                  size: 40,
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.money_off_csred,
                  size: 40,
                  color: Colors.yellowAccent,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.money_off_csred,
                  size: 40,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),

        //espacio
        SizedBox(
          height: 15,
        ),
        // fin del espacio
        //Inicia pedida de imagen

        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Comparte tus fotografías:',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const <Widget>[
              Expanded(
                child: FadeInImage(
                  image: NetworkImage(
                      'https://static.thenounproject.com/png/3927-200.png'),
                  placeholder: AssetImage('assets/Loading.gif'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: FadeInImage(
                  image: NetworkImage(
                      'https://static.thenounproject.com/png/3927-200.png'),
                  placeholder: AssetImage('assets/Loading.gif'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: FadeInImage(
                  image: NetworkImage(
                      'https://static.thenounproject.com/png/3927-200.png'),
                  placeholder: AssetImage('assets/Loading.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

//espacio
        SizedBox(
          height: 15,
        ),
        // fin del espacio
        //Fin de pedida de imagen

//Inicio de los botones de abajo

        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              ButtonBar(
                children: [
                  ElevatedButton.icon(
                      icon: Icon(
                        Icons.upload_file,
                        size: 18,
                        color: Colors.white,
                      ),
                      onPressed: (() {
              Navigator.pushNamed(context, 'detalles');
            }),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 65, 168, 228),),
                      label: Text("¡LISTO A VIAJAR!")),
                  //SEGUNDO BOTÓN
                  ElevatedButton.icon(
                      icon: Icon(
                        Icons.cancel_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      onPressed: (() {
                        Navigator.pushNamed(context, 'detalles');
                      }),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 65, 168, 228),),
                      label: Text("Cancelar"))
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
