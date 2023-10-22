import 'package:flutter/material.dart';
import 'package:mediplanmovil/Constants/auth_constraits.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inicio"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido"),
            ElevatedButton(onPressed: (){
              authController.signOut();
            },
                child: Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}
