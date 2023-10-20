import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
final _formKey = GlobalKey<FormState>();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final FirebaseAuth _auth = FirebaseAuth.instance;
//String _errorMessage = '';


Future<void> _signInWithEmailAndPassword() async {
  try {
    if (_formKey.currentState!.validate()) {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      if (userCredential.user != null) {
        // Successfully signed in, redirect to home page
        final preferences = await SharedPreferences.getInstance();
        await preferences.setBool('isUserLoggedIn', true); // Guardar estado de inicio de sesión

      } else {
        // Something went wrong
        // You can show an error message to the user
      }
    }
  } catch (e) {
    print('Error signing in: $e');
    // You can show an error message to the user
  }
}



Future<void> _checkLoggedIn() async {
  final preferences = await SharedPreferences.getInstance();
  final isLoggedIn = preferences.getBool('isUserLoggedIn') ?? false;
  if (isLoggedIn) {
    // A la página principal

  }
}