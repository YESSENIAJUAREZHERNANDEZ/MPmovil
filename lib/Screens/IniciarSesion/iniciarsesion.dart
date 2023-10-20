import 'package:flutter/material.dart';
import 'package:mediplanmovil/Screens/RecuperarContra/recuperar.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar Sesión "), centerTitle: true),
      backgroundColor: Color.fromARGB(255, 78, 157, 196),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Image.asset(
                'assets/icono.png',
                width: 70,
                height: 70,
              ),
            ),
            const Text("Iniciar Sesión",
              style: TextStyle(fontSize: 26,fontFamily:'Droid Sans', color:Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            const  SizedBox(height: 16.0),
            const  Text(
              'Ingrese los siguientes datos:                        ',
              style: TextStyle(
                fontFamily: 'Droid Sans',
                fontSize: 16.0,
                color: Color.fromARGB(255, 57, 57, 59),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 18.0),
            TextFormField(
            //  controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
            //  controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 255, 255, 255)!,
                    width: 1.0, // Ancho del borde
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
              ),
            ),
            const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){},
              child: const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 14
                ),
                child: const Text('Empezar',
                  style: const TextStyle(
                  color:  Color.fromARGB(255, 255, 255, 255)
                ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 64, 62, 138),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const  SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Olvido su contraseña? ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 64, 66, 78),
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push( context,
                      MaterialPageRoute(builder: (context) => RecuperarContra()),
                    );
                  },
                  child: const Text(
                    'Recuperar',
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 58, 65, 128),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

