class User {
  int? id;
  String? name;
  String? email;
  String? password;
  String? emailVerifiedAt;
  String? sessionId;
  int? active;
  int? verified;
  String? device_name;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.emailVerifiedAt,
    this.sessionId,
    this.active,
    this.verified,
    this.device_name,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      emailVerifiedAt: json['email_verified_at'],
      sessionId: json['session_id'],
      active: json['active'],
      verified: json['verified'],
      device_name: json['device_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['session_id'] = this.sessionId;
    data['active'] = this.active;
    data['verified'] = this.verified;
    data['device_name'] = this.device_name;

    return data;
  }
}