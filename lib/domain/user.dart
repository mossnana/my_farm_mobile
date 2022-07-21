
import 'package:my_farm/config/user.dart';

enum UserType {
  guest,
  member,
  vip,
}

class User {
  late String email;
  late String accessToken;
  late String firstName;
  late String lastName;
  late String profileBase64;
  late UserType userType;

  User(this.email, this.accessToken, this.firstName, this.lastName, this.profileBase64,this.userType);

  User.init() {
    email = "guest@guest.com";
    accessToken = "";
    firstName = "Guest";
    lastName = "User";
    profileBase64 = defaultProfileBase64;
    userType = UserType.guest;
  }
  
  bool isLogin() {
    return accessToken == '' || email == '';
  }
}

extension StringMethods on UserType {
  UserType fromString(String strType) {
    return UserType.values.firstWhere((elem) => elem.toString() == strType, orElse: () => UserType.guest);
  }
}
