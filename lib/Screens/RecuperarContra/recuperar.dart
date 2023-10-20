import 'package:flutter/material.dart';

class RecuperarContra extends StatelessWidget {
  const RecuperarContra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 157, 196),
      appBar: AppBar(title: const Text("Recuperar contraseña"), centerTitle: true),
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
            const Text("Recuperar contraseña",
              style: TextStyle(fontSize: 26,fontFamily:'Droid Sans', color:Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            //Text("Bienvenido", style: TextStyle(fontSize: 30, fontFamily:'Roboto' ,color:Color.fromARGB(255, 6, 11, 53)),),
            const SizedBox(height: 18.0),
            const Text(
              'Ingrese su correo electronico:                        ',
              style: TextStyle(
                fontFamily: 'Droid Sans',
                fontSize: 16.0,
                color: Color.fromARGB(255, 57, 57, 59),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 18.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Ingrese su correo electrónico';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
              ),
            ),
            const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: const Text('Enviar correo de recuperación',
                  style: const TextStyle(
                      color:  Color.fromARGB(255, 255, 255, 255)
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 39, 36, 133),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
