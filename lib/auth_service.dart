// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:banki_app1/landing_p.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'navi_service.dart';

bool isLoggedIn = false;
String currentUser = "";
String displayname = "";
DateTime loginTime = DateTime.now();

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> login(String username, String pass, BuildContext context) async {
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: username,
        password: pass,
      );
      final user = userCredential.user;
      if (user != null) {
        isLoggedIn = true;
        currentUser = username;
        loginTime = DateTime.now();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const CurrentPage(),
          )
      );});
        return "Authenticated";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return 'Incorrect username or password. Please try again.';
    }

  Future<void> signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LandingPage(),
      ),
    );
    }

  Future<String> addUser(String displayname, String username, String pass, BuildContext context) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: username,
        password: pass,
      );
      final user = userCredential.user;
      if (user != null) {
        // final firestore = FirebaseFirestore.instance;
        // final QuerySnapshot querySnapshot = await firestore.collection('User').orderBy(FieldPath.documentId).limitToLast(1).get();
        // final lastDoc = querySnapshot.docs.first;
        // final int nextDocId = int.parse(lastDoc.id) + 1;
        // await firestore.collection('User').doc(nextDocId.toString()).set({
        //   'DisplayName' : displayname,
        //   'Email': username,
        // });
        return "User Added";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print(e.code);
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        print(e.code);
        return 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
      return 'An error occurred. Please try again.';
    }
    return 'An error occurred. Please try again.';
  }

  Future<String> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "Password reset email sent";
    } catch (e) {
      print(e);
      return 'An error occurred. Please try again.';
    }
  }

}