class LoginPost {
  final String userId;
  final String password;

  LoginPost({
    this.userId,
    this.password,
  });

  factory LoginPost.getfromJson(Map<String, dynamic> json) {
    return LoginPost(
      userId: json['userId'],
      password: json['password'],
    );
  }
}
