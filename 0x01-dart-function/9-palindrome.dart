bool isPalindrome(String str) {
  if(str.length <= 2) {
    return false;
  }
  
  String tmp = str.split('').reversed.join('');
  
  return tmp == str;
}
