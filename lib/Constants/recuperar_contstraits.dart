import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

  final TextEditingController _emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());
    } catch (e) {
      print('Error al restablecer su contraseña: $e');
    }
  }
