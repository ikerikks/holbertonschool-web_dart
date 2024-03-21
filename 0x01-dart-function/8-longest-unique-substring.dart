 longestUniqueSubstring(String str) {
  var tmp = str.split('');
  var res = '';
  var longest = '';

  tmp.forEach((l) {
    if (res.contains(l)) {
      longest = longest.length < res.length ? res : longest;
      res = '';
    }
    res += l;
  });

  longest = longest.length < res.length ? res : longest;
  
  return longest;
}
