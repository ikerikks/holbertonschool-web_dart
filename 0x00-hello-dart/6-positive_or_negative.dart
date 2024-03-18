
void main(n) {

  var nCopy= num.parse(n[0]);
  if (nCopy > 0) {
    print("$nCopy is positive");
  } 
  else if (nCopy == 0) {
    print("$nCopy is zero");
  }
  else {
    print("$nCopy is negative");
  }
}