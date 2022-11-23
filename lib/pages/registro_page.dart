import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viajes_app/widgets/fondo_login.dart';

import '../providers/registro_from_provider.dart';
import '../widgets/card_container.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoLogin(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Text(
                'Inicia aquí tu aventura !',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Grenze',
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Icon(
                      Icons.account_circle_sharp,
                      color: Color.fromARGB(255, 10, 9, 9),
                      size: 150,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ChangeNotifierProvider(
                        create: (_) => RegistroFormProvider(),
                        child: _LoginForm()),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<RegistroFormProvider>(context);

    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nombre Completo',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email@email.com',
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El correo no es válido';
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '***********',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {},
                ),
              ),
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                if (value != null && value.length >= 6) return null;
                return 'La contraseña debe ser de al menos 6  caracteres';
              },
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              disabledColor: Colors.grey,
              color: Color.fromARGB(255, 65, 168, 228),
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 15,
                ),
                child: Text(
                  loginForm.isLoading ? 'Espere...' : 'Registrar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus(); //quitar teclado
                      if (!loginForm.isValidForm()) return;
                      loginForm.isLoading = true;
                      //Navigator.pushReplacementNamed(context, 'home');
                      await Future.delayed(Duration(seconds: 2));
                      loginForm.isLoading = false;
                      Navigator.pushReplacementNamed(context, 'login');
                    },
            ),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}
