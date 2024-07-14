import 'package:mysql_client/mysql_client.dart';

class Connection {
  Future<MySQLConnection> GetConnection() async {
    final conn = await MySQLConnection.createConnection(
      host: "localhost",
      port: 3306,
      userName: "root",
      password: "root",
      databaseName: "UniversidadPrueba",
    );
    await conn.connect();
    return conn;
  }

  Future<void> Close(MySQLConnection? conn) async {
    if (conn == Null) {
      await conn?.close();
    }
  }
}
