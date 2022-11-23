import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viajes_app/pages/detalles_page.dart';
import 'package:viajes_app/pages/insert_destiny_page.dart';
import 'package:viajes_app/pages/insert_xp_page.dart';
import 'package:viajes_app/pages/login_page.dart';
import 'package:viajes_app/pages/principal_page.dart';
import 'package:viajes_app/pages/registro_page.dart';
import 'package:viajes_app/services/producto_service.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductoService())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'registro': (_) => RegistroPage(),
        'principal': (_) => PrincipalPage(),
        'detalles': (_) => DetallesPage(),
        'experiencia': (_) => InsertarExperienciaPage(),
        'destino': (_) => InsertarDestinoPage(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 109, 123, 202),
          elevation: 0,
        ),
      ),
    );
  }
}