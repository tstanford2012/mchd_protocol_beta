import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

abstract class BaseAuth {
  Future<String> signInWithEmailAndPassword(String email, String password);
  Future<String> createUserWithEmailAndPassword(String email, String password);
  Future<String> currentUser();
}

class Auth implements BaseAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String password;
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
        try{FirebaseUser user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    return user.uid;}
    catch (e) {
        print('Auth Error: $e');
      }
    
  }

  Future<String> createUserWithEmailAndPassword(
      String email, String password) async {
    try{FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    return user.uid;}
    catch (e) {
        print('AuthError: $e');
      }
}

Future<String> currentUser() async {
  FirebaseUser user = (await _auth.currentUser());
    return user.uid;}
}