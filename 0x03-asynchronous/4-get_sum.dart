import './4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    Map user = await jsonDecode(await fetchUserData());
    List userOrders = jsonDecode(await fetchUserOrders(user['id']));
    num total = 0;
    
    for (String product in userOrders) {
      total += num.parse(await fetchProductPrice(product));
    }
    return total;

  } catch(e) { return -1; }
}
