class User {
  final int id;
  final String email;
  final String password;
  final String nombre;
  final String apellidos;
  final String direccion;
  final int telefono;

  User(
      {required this.email,
      required this.password,
      required this.nombre,
      required this.apellidos,
      required this.direccion,
      required this.id,
      required this.telefono});
}
