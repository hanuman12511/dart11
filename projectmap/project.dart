import 'dart:io';

List<String> username = ["user1", "user2"];
List<int> product_id = [1, 2, 3, 4, 5];
List<String> product_name = [
  "product1",
  "product2",
  "product3",
  "product4",
  "product5"
];
List<int> qty = [10, 23, 34, 20, 30];
List<int> rate = [100, 200, 300, 400, 350];

var userdata = {};
var productdata = {
  "product_id": product_id,
  "product_name": product_name,
  "qty": qty,
  "rate": rate,
  "dis": [2, 1, 3, 2, 4],
  "cart": [
    {"pro_id": [], "cartqty": []}
  ],
};

productcheck() {}

addtocart() {
  productcheck();
}

line(var name) {
  print("********** $name *******");
}

product() {
  line("product");
  for (var j = 0; j < product_id.length; j++) {
    for (var i in productdata.keys) {
      if (i != "cart") {
        stdout.write("$i");
        stdout.write("\t");
      }
    }
    print("");
  }
  addtocart();
}

login() {
  var find = false;
  print("enter name");
  var name = stdin.readLineSync();
  for (var i = 0; i < username.length; i++) {
    if (name == username[i]) {
      find = true;
    }
  }
  if (find) {
    line("login");
    product();
  } else {
    print("not login");
  }
}

main() {
  login();
}
