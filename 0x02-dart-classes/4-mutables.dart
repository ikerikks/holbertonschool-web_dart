// bool isNum(String char)=> num.tryParse(char) is num;
// bool isUpper(String char)=> char == char.toUpperCase() && !isNum(char);
// bool isLower(String char)=> char == char.toLowerCase()&& !isNum(char);

// class Password {
//   String _password = '';
//   Password({password}) {
//     this._password = password;
//   }

//   bool isValid() {
//     int upper = 0;
//     int lower = 0;
//     int digits = 0;
//     int l = this.password.length;

//     if (l < 8 || l > 16) { return false; }
//     for (String char in this.password.split('')) {
//       if (isNum(char)) { digits += 1; }
//       else if (isUpper(char)) { upper += 1; }
//       else if (isLower(char)) { lower += 1; }
//       if (upper > 0 && lower > 0 && digits > 0) { return true; }
//     }
//     return false;
//   }

//   @override
//   String toString() {
//     return "Password ${this.password}";
//   }
//   String get password {
//     return this._password;
//   }

//   void set password(value) {
//     this._password = value;
//   }
// }

class Password {
    String _password = '';
    Password({required String password}) : _password = password;
    bool isValid() {
        if (_password.length < 8 || _password.length > 16) {
        return false;
    }
    final hasUppercase = RegExp(r'[A-Z]').hasMatch(_password);
    final hasLowercase = RegExp(r'[a-z]').hasMatch(_password);
    final hasNumber = RegExp(r'[0-9]').hasMatch(_password);
    return hasUppercase && hasLowercase && hasNumber;
  }
    String toString() {
        return (
            'Your Password is: ${_password}'
        );
    }
    String get password => _password;
    set password(String newPassword) {
    _password = newPassword;
  }
}