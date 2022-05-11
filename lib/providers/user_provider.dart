import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_rivaan/models/user.dart' as Model;
import '../resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  Model.User? _user;

  final AuthMethods _authMethods = AuthMethods();
  Model.User get getUser => _user!;
  Future<void> refreshUser() async {
    Model.User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
