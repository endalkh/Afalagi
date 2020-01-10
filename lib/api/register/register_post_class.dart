class RegisterPost {
  final String firstName;
  final String lastName;
  final String userId;
  final String password;

  RegisterPost({
    this.firstName,
    this.lastName,
    this.userId,
    this.password,
  });

  factory RegisterPost.getfromJson(Map<String, dynamic> json) {
    return RegisterPost(
      firstName: json['firstName'],
      lastName: json['lastName'],
      userId: json['userId'],
      password: json['password'],
    );
  }
}
