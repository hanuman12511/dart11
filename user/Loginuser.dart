import 'dart:io';
import 'DOA.dart';

class Loginuser {
  fun_login() {
    print("user class function");
    var objdoa = new DOA();
    // objdoa.setUserName("user");
    stdout.write("enter name");
    objdoa.username = stdin.readLineSync();
    objdoa.showUserName();
  }
}
