import 'package:mediplanmovil/Constants/auth_constraits.dart';
import 'package:flutter/material.dart';
//import 'package:mediplanmovil/src/app/app.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>  {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title:Text("Register"), centerTitle:true),
    body: Column(
    children: [
      TextField(
    decoration: InputDecoration(hintText: "Email"),
    controller: _emailController,
    ),
    TextField(
    decoration: InputDecoration(hintText: "Password"),
    controller: _passwordController,
    obscureText: true,
    ),
    const SizedBox(height: 30),
      Row(
        children: [
          ElevatedButton(onPressed: ()async{
            authController.emailRegister(_emailController.text, _passwordController.text);
          }, child: Text("Sign Up")),
          ElevatedButton(onPressed: ()async{

          }, child: Text("Log In"))
        ],
      )
    ],
    ),
    );
  }
}
