import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:viajes_app/widgets/fondo_login.dart';
import 'package:viajes_app/widgets/fondo_principal.dart';

class InsertarDestinoPage extends StatelessWidget {
  const InsertarDestinoPage({super.key});

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
              Navigator.pushNamed(context, 'principal');
            }),
          ),
            SizedBox(
              height: 10,
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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Insertar destino.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Contenedor de titulo de pedir datos para el destino
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Nombre de la experiencia o destino:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Contenedor del pedir nombre
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.length < 1) {
                return 'El nombre de la experiencia es obligatorio';
              }
            },
            decoration: InputDecoration(
                hintText: 'Isla Azul',
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
          height: 10,
        ),
        // fin del espacio

        //Contenedor de pedir el estado
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Nombre del estado donde se ubica:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Contenedor del pedir el estado
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.length < 1) {
                return 'El nombre del estado es obligatorio';
              }
            },
            decoration: InputDecoration(
                hintText: 'Jalisco, México',
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

        //Contenedor de pedir el nombre del creador
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Nombre del creador de contenido:',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Contenedor del pedir el nombre del creador
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.length < 1) {
                return 'El nombre del creador es obligatorio';
              }
            },
            decoration: InputDecoration(
                hintText: 'Alain Berber Álvarez',
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
        // fin del espacio 3

        //Contenedor de pedir la descripción
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            'Descripción de la experiencia:',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Contenedor del pedir el nombre del creador
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: TextFormField(
            maxLines: 7,
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
                  'Costo:',
                  textAlign: TextAlign.justify,
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
//Días
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  'Duración (días):',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
              Expanded(
                child: Icon(Icons.calendar_month_rounded, size: 40),
              ),
            ],
          ),
        ),

//Estrellas
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  'Calificación:',
                  textAlign: TextAlign.justify,
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
          padding: EdgeInsets.symmetric(horizontal: 5),
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
                        Navigator.pushNamed(context, 'principal');
                      }),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(255, 65, 168, 228),),
                      label: Text("¡AGREGAR DESTINO!")),
                  //SEGUNDO BOTÓN
                  ElevatedButton.icon(
                      icon: Icon(
                        Icons.cancel_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      onPressed: (() {
                        Navigator.pushNamed(context, 'principal');
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
