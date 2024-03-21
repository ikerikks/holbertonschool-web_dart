String longestUniqueSubstring(String str) {
  var tmp = '';
  str.split('').forEach((l) {
    if (tmp.contains(l)) {
      tmp = '';
    }
    tmp += l;
  });
  return tmp;
}
