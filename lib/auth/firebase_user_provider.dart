import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BeautyPlaceFirebaseUser {
  BeautyPlaceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BeautyPlaceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BeautyPlaceFirebaseUser> beautyPlaceFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<BeautyPlaceFirebaseUser>(
        (user) => currentUser = BeautyPlaceFirebaseUser(user));
