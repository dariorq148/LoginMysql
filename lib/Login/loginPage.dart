import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:login/MSQL/LoginController/LoginController.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  final Logincontroller _loginController = Logincontroller();

  Future<void> _login() async {
    String email = _email.text;
    String password = _password.text;
    bool isLogged = await _loginController.logincontroller(email, password, context);

    if (isLogged) {
      Navigator.pushNamed(context, '/pageOne');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error al iniciar sesión'),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              controller: _email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
