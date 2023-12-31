import 'package:flutter/material.dart';
import 'package:mediplanmovil/Constants/auth_constraits.dart';
import 'package:mediplanmovil/Screens/Registrar/Registrar.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
  }

  class _InicioSesionState extends State<InicioSesion>  {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 42, 120, 175),
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

            const  SizedBox(height: 35.0),
            const  Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontFamily: 'Droid Sans',
                fontSize: 20.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 18.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                filled: true,

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
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                filled: true,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 255, 255, 255)!,
                    width: 1.0,
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
              onPressed: () async {
                authController.emailLogin(_emailController.text, _passwordController.text);
              },
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
                  'Crear una nueva cuenta: ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 64, 66, 78),
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push( context,
                      MaterialPageRoute(builder: (context) => Registrar()),
                    );
                  },
                  child: const Text(
                    'Registrar',
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

