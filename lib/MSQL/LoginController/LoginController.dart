import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:login/MSQL/LoginController/Loger.dart';
import 'package:login/Provider/Provider.dart';

class Logincontroller extends Loger {
  Future<bool> logincontroller(
      String email, String password, BuildContext context) async {
    var user = await loger(email, password);
    if (user != null) {
      Provider.of<UserProvider>(context, listen: false).setUser(user);
      Navigator.pushNamed(context, '/pageOne');
      print('logueo exitoso');
      return true;
    } else {
      print('error al logearte');
      return false;
    }
  }
}
