bool isNum(String char)=> num.tryParse(char) is num;
bool isUpper(String char)=> char == char.toUpperCase() && !isNum(char);
bool isLower(String char)=> char == char.toLowerCase()&& !isNum(char);

class Password {
  String _password = '';
  Password({password}) {
    this._password = password; 
  }
  bool isValid() {
    int upper = 0;
    int lower = 0;
    int digits = 0;
    int l = _password.length;

    if (l < 8 || l >16) { return false; }
    for (String char in _password.split('')) {
      if (isNum(char)) { digits += 1; }
      else if (isUpper(char)) { upper += 1; }
      else if (isLower(char)) { lower += 1; }
      if (upper > 0 && lower > 0 && digits > 0) { return true; }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
