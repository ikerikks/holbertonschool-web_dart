List<double> convertToF(List<double> temperaturesInC) {
  List<double> tab = [];
  
  temperaturesInC.forEach((ele) { 
    var tmp = ((ele * (9/5)) + 32).toStringAsFixed(2);
    tab.add(double.parse(tmp));
  });

  return tab;
}