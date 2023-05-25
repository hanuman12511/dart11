import 'dart:io';

List emailsadmin = ["admin1@gmail.com", "admin2@gmail.com"];
List passwordadmin = ["1234", "1111"];
List emailsuser = ["user1@gmail.com", "user2@gmail.com"];
List passworduser = ["1234", "1111"];
void line() {
  print("*********************************************************");
}

addcart() {
  print("Enter the product name you want to add to cart");
  var productnameincart = stdin.readLineSync();
  var productincart = [];
}

product() {
  var productname = ["product1", "product2", "product3", "product4"];
  var productrate = [100, 200, 150, 300];
  var productqty = [20, 24, 36, 30];
  line();
  print("Sno.\tp_name\t\tp_rate\tp_qty");
  for (var i = 0, j = 1; i < productname.length; i++, j++) {
    print("${j}\t${productname[i]}\t${productrate[i]}\t${productqty[i]}");
  }
  line();
  print("Do you want to add product to cart press y or n.");
  var hana = stdin.readLineSync();
  if (hana == "y") {
    addcart();
  } else if (hana == "n") {
    print("Thank you for visiting or online store.");
  } else {
    print("Invalid input try again");
    product();
  }
}

void acckadmin(bool xyz) {
  if (xyz) {
    print("Login successfull");
  } else {
    print("Invalid login or password try again");
  }
}

void acckuser(bool xyz) {
  if (xyz) {
    print("Login successfull");
    product();
  } else {
    print("Invalid login or password try again");
  }
}

void createaccasadmin() {
  print("Enter your name");
  stdin.readLineSync();
  print("Enter your Email address");
  var email = stdin.readLineSync();
  print("Enter your password");
  var passw = stdin.readLineSync();
  emailsadmin.add(email);
  passwordadmin.add(passw);
  print("Account creation successfull.");
  print("Enter your email id and password for admin login");
  acckadmin(loginasadmin());
}

void createaccasuser() {
  print("Enter your name");
  stdin.readLineSync();
  print("Enter your Email address");
  var email = stdin.readLineSync();
  print("Enter your password");
  var passw = stdin.readLineSync();
  emailsuser.add(email);
  passworduser.add(passw);
  print("Account creation successfull.");
  print("Enter your emailid and password for user login");
  acckuser(loginasuser());
}

bool loginasuser() {
  print("Email address");
  String? email = stdin.readLineSync();
  print("Password");
  String? pass = stdin.readLineSync();

  for (var i = 0; i < emailsuser.length; i++) {
    if ((email == emailsuser[i]) && (pass == passworduser[i])) {
      return true;
    }
  }
  return false;
}

bool loginasadmin() {
  print("Email address");
  String? email = stdin.readLineSync();
  print("Password");
  String? pass = stdin.readLineSync();

  for (var i = 0; i < emailsadmin.length; i++) {
    if ((email == emailsadmin[i]) && (pass == passwordadmin[i])) {
      return true;
    }
  }
  return false;
}

main() {
  while (true) {
    print(
        "Enter \n1. Login as user \n2. Login as admin \n3. Create account as admin \n4. Create account as user \n5.logout  ");
    int a = int.parse(stdin.readLineSync()!);
    if (a == 1) {
      acckuser(loginasuser());
    } else if (a == 2) {
      acckadmin(loginasadmin());
    } else if (a == 3) {
      createaccasadmin();
    } else if (a == 4) {
      createaccasuser();
    } else if (a == 5) {
      print("logout successfull");
      return;
    } else {
      print("Enter the valid input");
    }
  }
}
