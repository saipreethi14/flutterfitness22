import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  Future<String> login(String email, String password) async {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged In";

  }

  Future<String> Signup(String email, String password) async {

      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed Up";
  }
  Future Signout() async{
    return _auth.signOut();
  }
}
