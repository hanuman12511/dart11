import 'Infodata/product.dart';
import 'Infodata/userData.dart';

/* class Emp extends userData {
  datashow() {
    print(userdata);

    print("hello");
  }
} */

class Code extends Product {
  @override
  getProduct() {
    print("product");
  }
}

main() {
  /*  var objemp = new Emp();
  objemp.datashow();
  var objcode = new Code();
  objcode.showCode(); */
  /* var userobj = new userData("user", "123445");
  userobj.showUserData();
  userobj.setUserInfo("username", "password"); */
  /*  userobj.setUser("user");
  userobj.setPass("1234"); */
  var userobj = new userData();
  userData.username = "user";
  userData.password = "user1";
  userobj.showUserData();
}
