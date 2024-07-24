class UserModel {
  const UserModel({
    required this.email,
    required this.password,
    required this.displayName,
    required this.birthday,
    required this.phone,
    required this.roles,
    this.userProfilePhoto,
  });
  final String email;
  final String? userProfilePhoto;
  final DateTime birthday;
  final String displayName;
  final List<String> roles;
  final String phone;
  final String password;
}
