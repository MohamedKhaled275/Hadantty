class LoginModel{
  String displayName;
  String email;
  String roleName;
  String token;
  String message;
  int statusCode;

  LoginModel.fromJson(Map<String , dynamic> json)
  {
    displayName = json['displayName'];
    email = json['email'];
    roleName = json['roleName'];
    token = json['token'];
    message = json['message'];
    statusCode = json['statusCode'];
  }
}