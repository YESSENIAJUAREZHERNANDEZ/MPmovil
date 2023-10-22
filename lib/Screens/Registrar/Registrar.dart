import 'package:flutter/material.dart';
import 'package:mediplanmovil/Constants/auth_constraits.dart';

class Registrar extends StatefulWidget {
  const Registrar({super.key});

  @override
  State<Registrar> createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar>  {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registrar Cuenta "), centerTitle: true,
        elevation: 0, backgroundColor: Color.fromARGB(255, 42, 120, 175),
      ),
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

            const  SizedBox(height: 50.0),
            const  Text(
              'Ingrese los siguientes datos:                        ',
              style: TextStyle(
                fontFamily: 'Droid Sans',
                fontSize: 18.0,
                color: Color.fromARGB(255, 246, 246, 246),
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
                labelText: 'Contraseña ( al menos 6 digitos)',
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
                authController.emailRegister(_emailController.text, _passwordController.text);
              },
              child: const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 14
                ),
                child: const Text('Registrar',
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
          ],
        ),
      ),
    );
  }
}

