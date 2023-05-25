import 'dart:io';

void main() {
  List<String> products = ["product1", "product2", "product3", "product4"];
  List<int> rates = [100, 200, 240, 233];
  List<int> quantities = [20, 32, 20, 40];
  List<String> addedProducts = [];
  List<int> addedQuantities = [];
  List<int> addedRates = [];
  List<String> users = ["user1", "user2"];
  List<int> passwords = [111, 123];

  String username = input("enter name");
  if (users.contains(username)) {
    print("user login");
    String p = '';
    bool r = false;
    for (int i = 0; i < users.length; i++) {
      if (username == users[i]) {
        r = true;
        p = i.toString();
        break;
      }
    }
    print(p);
    bool log = false;
    if (r) {
      int password1 = int.parse(input("Enter password"));
      if (password1 == passwords[int.parse(p)]) {
        print("login");
        log = true;
      }
    } else {
      print("not login");
    }
    int p_pos = -1;
    bool p_find = false;
    if (log) {
      int i = 0;
      while (i < products.length) {
        print("${products[i]}\t${rates[i]}\t${quantities[i]}");
        i = i + 1;
      }
      while (true) {
        String ch = input("enter 'y' to add product ");
        if (ch == 'y') {
          String pro = input("enter product name");
          for (int i = 0; i < products.length; i++) {
            if (pro == products[i]) {
              p_pos = i;
              p_find = true;
              break;
            }
          }
          if (p_find) {
            int q = int.parse(input("enter qty"));
            if (q <= quantities[p_pos]) {
              print(rates[p_pos]);
              if (!addedProducts.contains(pro)) {
                addedProducts.add(pro);
                addedQuantities.add(q);
              } else {
                for (int i = 0; i < addedProducts.length; i++) {
                  if (pro == addedProducts[i]) {
                    int q_pos = i;
                    addedQuantities[i] = addedQuantities[i] + q;
                  }
                }
                continue;
              }
              addedRates.add(rates[p_pos]);
              quantities[p_pos] = quantities[p_pos] - q;
            } else {
              print("you have crossed the quantity limit");
            }
          } else {
            print("Product not found");
          }
        } else {
          break;
        }
      }
      print("*********** add to cart ************");
      for (int i = 0; i < addedProducts.length; i++) {
        print("${addedProducts[i]}\t${addedQuantities[i]}\t${addedRates[i]}");
      }
      print("*********** add to cart ************");
      while (true) {
        String rm = input("product remove 'y'");
        if (rm == 'y') {
          String p = input("enter product name");
          int q1 = int.parse(input("enter the qty of product"));
          for (int i = 0; i < addedProducts.length; i++) {
            if (p == addedProducts[i]) {
              addedQuantities[i] = addedQuantities[i] - q1;
              if (addedQuantities[i] < 0) {
                addedProducts.removeAt(i);
              }
            }
          }
        } else {
          break;
        }
      }
      int totalPay = 0;
      for (int i = 0; i < addedProducts.length; i++) {
        print("${addedProducts[i]}\t${addedQuantities[i]}\t${addedRates[i]}");
        totalPay += addedQuantities[i] * addedRates[i];
      }
      print("Total pay: $totalPay");
      int pay = int.parse(input("enter pay"));
      if (pay == totalPay) {
        print("thank you");
      }
    }
  }
}

String input(String prompt) {
  print(prompt);
  String? inp = stdin.readLineSync();
  return inp ?? '';
}