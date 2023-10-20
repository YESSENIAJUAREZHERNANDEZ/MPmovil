import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mediplanmovil/Controller/auth_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';
//TODO
AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp(
  //TODO Udpate this line: options: DefaultFirebaseOptions.currentPlatform,
);

FirebaseAuth auth = FirebaseAuth.instance;
GoogleSignIn googleSignIn = GoogleSignIn();