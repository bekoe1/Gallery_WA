class UserModel {
  const UserModel({
    required this.email,
    required this.displayName,
    required this.birthday,
    required this.phone,
    required this.roles,
  });
  final String email;
  final DateTime birthday;
  final String displayName;
  final List<String> roles;
  final String phone;
}
