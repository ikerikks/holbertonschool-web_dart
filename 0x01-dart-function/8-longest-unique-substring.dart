String longestUniqueSubstring(String str) {
  var tmp = str.split('').toSet().join('');
  return tmp;
}