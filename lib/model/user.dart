class UsersModel {
  final String name;
  final String role;
  final String profileImage;

  UsersModel({
    required this.name,
    required this.role,
    required this.profileImage,
  });
}

final List<UsersModel> staffList = [
  UsersModel(
    name: "Henry Itondo",
    role: "Math Teacher",
    profileImage: "image/users/ic_users2.png",
  ),
  UsersModel(
    name: "Courtney Henry",
    role: "Supervisor",
    profileImage: "image/users/ic_users3.png",
  ),
  UsersModel(
    name: "Darika Samak",
    role: "Admin",
    profileImage: "image/users/ic_users4.png",
  ),
  UsersModel(
    name: "Em Assinder",
    role: "Class Teacher",
    profileImage: "image/users/ic_users5.png",
  ),
  UsersModel(
    name: "Darika Samak",
    role: "Admin",
    profileImage: "image/users/ic_users6.png",
  ),
  UsersModel(
    name: "Em Assinder",
    role: "Class Teacher",
    profileImage: "image/users/ic_users7.png",
  ),
];
