var userData = () {
  print("Hello");
};
fun1(var n) => n * 2;
ListData(list) {
  print(list);
  for (var i in list) {
    print(i);
  }
}

main() {
  userData();
  print(fun1(3));
  var list = [3, 2, 4, 3, 5];
  var l = list.map((e) => e * 4);
  print(l);
}
