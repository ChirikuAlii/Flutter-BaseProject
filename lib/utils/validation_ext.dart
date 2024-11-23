extension ValidationExt on String {
  bool get isValidEmail {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(this);
  }

  // bool get isValidPassword {
  //   return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(this);
  // }

  // bool get isValidPhoneNumber {
  //   return RegExp(r'^[0-9]{10,13}$').hasMatch(this);
  // }

  // bool get isValidName {
  //   return RegExp(r'^[a-zA-Z ]{2,30}$').hasMatch(this);
  // }
}
