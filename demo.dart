import 'dart:io';

main() {
  var data = [1, 2, 3, 4, 5];
  print(data.length);
  print(data);
  data.add(7);
  print(data);
  data.addAll([2, 3, 4]);
  print(data);
  data.remove(2);

  print(data);
  data.insert(2, 5);

  print(data);
  data.forEach((e) {
    print(e);
  });
  print("for");
  for (int i = 0; i < data.length; i++) {
    //print(data[i]);
    stdout.write(data[i]);
    stdout.write(" ");
  }
}

int n1 = 12323456;
/* 
1.List[]
2.even[]
3.odd[]
4 finallist=[even] [odd]

use function
1.login 
2. product show 3 (id name rate qty)
3 addtocart
4. addtocart remove
5 payment */

/* 
void add(var n) {
  print("add=${n}");
  //return n * 10;
}

void user(var n) {
  if (n > 0) {
    print("${n}");
  } else {
    return;
  }
  user(n = n - 1);
  //return n * 10;
}

main() {
  while (true) {
    print("1 forn add 2 for user");

    var ch = int.parse(stdin.readLineSync()!);
    switch (ch) {
      case 1:
        var n = 9;
        add(n);
        print("1");
        return;
      case 2:
        user(40);
        print("2");
        break;
        ;
      case 3:
        print("3");
        break;
      case 4:
        print("4");
        break;
      default:
        print("object");
    }
  }
 */
//  int n1 = 232546;

  /* 1.count=?


  
  2. sum=?
  3. even =print n2=2246
  4. even sum=?
  5. even n2 = 6422

11:00
 */

  /*int i = 1;

  while (i <= 5) {
    print(i++);
  }*/
  /*for (int i = 0; i <= 10; i++) {
    print(i * t);
  }*/

  /*String pin = "1234";
  if (pin == 1111) {
    print("login");
  } else if (pin == "1234") {
    print("login");
  } else {
    print("not login");
  }
  print("*********");
*/
//  (n1 > 0) ? print("+") : print("-");
  // n1--;
  //print(n1);

  //int n2 = 4;
  //bool r = n1 > 10 && n2 < 6;
  //bool r = n1 > 10 || n2 < 6;
  // bool r = n1 > 10 || n2 < 6;
  //print(!r);

  //==, !=,> < >= <=
  //bool r = n1 != n2;
//  print(r);

  //n1 = n1 + 6;
  //n1 -= 2;
  //print(n1);

  /*  print("hello");
  int n1 = 9;
  int n2 = 8;
  int r = n1 + n2;
  print(r);
  print("add=${r}");
  r = n1 - n2;
  print(r);
  r = n1 * n2;
  print(r);
 */

