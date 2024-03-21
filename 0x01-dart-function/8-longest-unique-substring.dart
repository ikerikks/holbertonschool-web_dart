String longestUniqueSubstring(String str) {
  assert(str.length > 0);
  var tmp = str.split('').toSet().join('');
  return tmp;
}