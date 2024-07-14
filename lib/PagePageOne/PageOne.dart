import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/Provider.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('User: ${userProvider.user?.nombre ?? 'No User'}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, ${userProvider.user?.nombre ?? 'Guest'}'),
            if (userProvider.user != null) ...[
              Text('Email: ${userProvider.user!.email}'),
              Text('Nombre: ${userProvider.user!.nombre}'),
              Text('Apellidos: ${userProvider.user!.apellidos}'),
              Text('Direccion: ${userProvider.user!.direccion}'),
              Text('Telefono: ${userProvider.user!.telefono}'),
            ]
          ],
        ),
      ),
    );
  }
}
