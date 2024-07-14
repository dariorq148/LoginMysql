import 'package:login/MSQL/connection.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:login/ClassUser/ClassUser.dart';

class Loger extends Connection {
  Future<User?> loger(
      String email,
      String password,
      ) async {
    MySQLConnection conn = await GetConnection();
    try {
      var result = await conn.execute(
          'SELECT * FROM usuarios WHERE email=:email AND password=:password',
          {'email': email, 'password': password});

      if (result.rows.isNotEmpty) {
        var row = result.rows.first;
        return User(
          id: int.parse(row.colAt(0)!),
          email: row.colAt(1)!,
          password: row.colAt(2)!,
          nombre: row.colAt(3)!,
          apellidos: row.colAt(4)!,
          direccion: row.colAt(5)!,
          telefono: int.parse(row.colAt(6)!),
        );
      }
    } catch (e) {
      print(e);
    } finally {
      await conn.close();
    }
    return null;
  }
}
