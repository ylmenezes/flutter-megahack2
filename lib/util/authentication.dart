import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _db = Firestore.instance;

  Future<FirebaseUser> get getUser => _auth.currentUser();
  Stream<FirebaseUser> get user    => _auth.onAuthStateChanged;

 Future<FirebaseUser> login(String email, String pass) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
    FirebaseUser user = result.user;

    updateUserData(user);
    return user;
  }

  Future<FirebaseUser> createAccount(String email, String password) async {

    AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final FirebaseUser user = result.user;

    assert(user != null);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    updateUserData(user);
    print('signInEmail succeeded: $user');

    return user;
  }

  Future<FirebaseUser> anonLogin() async {
    AuthResult result = await _auth.signInAnonymously();
    FirebaseUser user = result.user;

    updateUserData(user);
    return user;
  }

  Future<void> updateUserData(FirebaseUser user) {
    DocumentReference ref = _db.collection('user_reports').document(user.uid);
    return ref.setData({'uid': user.uid, 'last_login': DateTime.now()}, merge: true);
  }

  Future<void> signOut() {
     return _auth.signOut();
  }
}
