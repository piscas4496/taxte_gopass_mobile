// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  int? id;
   String?  email;
   String? password; 
   
  LoginModel(
      {this.id,
      this.email,
      this.password,
      
      
      });
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      id: json['id'],
      email: json['email'],
      password: json['password'],
      
    );
  }
}