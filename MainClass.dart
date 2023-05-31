import 'dart:io';
import 'user/Loginuser.dart';

class Db {
  var product = ["p3", "p4"];
  Fun_Db() {
    String n = stdin.readLineSync()!;
    print(n);
  }
}

main() {
  print("main file");
  var objDb = new Db();
  objDb.Fun_Db();
  /* var objlog = new Loginuser();
  objlog.fun_login(); */
}
