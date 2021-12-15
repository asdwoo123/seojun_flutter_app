void signInService() {

}

void signUpService(bool confirm, String email, String password, bool terms) {
  Pattern emailPattern = r'^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+';
  Pattern pwdPattern = r'^\d+$';
  RegExp emailRegex = RegExp(emailPattern);
  RegExp pwdRegex = RegExp(pwdPattern);
}

