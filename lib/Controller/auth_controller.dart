import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mediplanmovil/Constants/auth_constraits.dart';
import 'package:mediplanmovil/Screens/HomeScreen/home.dart';
import 'package:mediplanmovil/Screens/register/register.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;
  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSignIn.currentUser);
    firebaseUser.bindStream(auth.authStateChanges());
    ever(firebaseUser, _setInitialScreen);
    googleSignInAccount.bindStream(googleSignIn.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
    super.onReady();
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const Register());
    } else {
      Get.offAll(() => const HomePage());
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    print(googleSignInAccount);
    if (googleSignInAccount != null) {
      Get.offAll(() => const Register());
    } else {
      Get.offAll(() => const HomePage());
    }
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);
        await auth.signInWithCredential(credential).catchError((onError) {
          print("Error is$onError");
        });
      }
    } catch (e) {
      Get.snackbar("Error", e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  void emailRegister(String email, password) {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {
      Get.snackbar("Error", firebaseAuthException.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void emailRegistrer(String email, password) {
    try {
      auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {
      Get.snackbar("Error", firebaseAuthException.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    await auth.signOut();
  }
}
