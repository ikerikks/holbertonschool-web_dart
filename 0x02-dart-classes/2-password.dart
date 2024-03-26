bool isNum(String char)=> num.tryParse(char) is num;
bool isUpper(String char)=> char == char.toUpperCase() && !isNum(char);
bool isLower(String char)=> char == char.toLowerCase()&& !isNum(char);

class Password {
  String password = '';
  bool isValid() {
    int upper = 0;
    int lower = 0;
    int digits = 0;
    int l = password.length;

    if (l < 8 || l >16) { return false; }
    for (String char in password.split('')) {
      if (upper > 0 && lower > 0 && digits > 0) { return true; }
      if (isNum(char)) { digits += 1; }
      else if (isUpper(char)) { upper += 1; }
      else if (isLower(char)) { lower += 1; }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
