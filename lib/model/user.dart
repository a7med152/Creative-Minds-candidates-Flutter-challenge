
class User {

  User({
    this.id,
    this.name,
    this.email,
    this.isEmailVerified,
    this.isPhoneVerified,
    this.phone,
    this.token,
    this.image,
    this.userPassword,
  });

  int? id;
  String? name;
  String? email;
  bool? isEmailVerified;
  bool? isPhoneVerified;
  String? phone;
  String? token;
  String? image;
  String? userPassword;


  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    isEmailVerified: json["email_verified_at"],
    isPhoneVerified: json["phone_verified_at"],
    phone: json["phone"],
    token: json["token"],
    image: json["image"],
    userPassword: json["userPassword"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": isEmailVerified,
    "phone_verified_at": isPhoneVerified,
    "phone": phone,
    "token": token,
    "image": image,
    "userPassword": userPassword,
  };
}



