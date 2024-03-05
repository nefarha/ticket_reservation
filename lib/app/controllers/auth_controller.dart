import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:reza_reservation/app/data/addon/reusable.dart';
import 'package:reza_reservation/app/routes/app_pages.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final _firebaseAuthInstance = FirebaseAuth.instance;

  Rxn<User?> get nullOrUser => Rxn<User?>(_firebaseAuthInstance.currentUser);

  Future<UserCredential?> createUserByEmail(
      {required String email, required String password}) async {
    try {
      var userCred = await _firebaseAuthInstance.createUserWithEmailAndPassword(
          email: email, password: password);

      return userCred;
    } on FirebaseAuthException catch (e) {
      Reusable.errorDialog(middleText: e.message ?? '');
    }
    return null;
  }

  Future<UserCredential?> signInUserByEmail(
      {required String email, required String password}) async {
    try {
      var userCred = await _firebaseAuthInstance.signInWithEmailAndPassword(
          email: email, password: password);

      return userCred;
    } on FirebaseAuthException catch (e) {
      Reusable.errorDialog(middleText: e.message ?? '');
    }
    return null;
  }

  Future logOut() async {
    await _firebaseAuthInstance.signOut();
    Get.offAllNamed(Routes.AUTHENTICATINO);
  }

  @override
  void onInit() {
    nullOrUser.bindStream(_firebaseAuthInstance.authStateChanges());
    print(nullOrUser);
    super.onInit();
  }
}
