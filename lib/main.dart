import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Login/loginPage.dart';
import 'PagePageOne/PageOne.dart';
import 'Provider/Provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/pageOne': (context) => PageOne(),
        },
      ),
    );
  }
}
