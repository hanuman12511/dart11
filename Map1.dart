main() {
  var data = {"id": 4, "name": "user"};

  print(data["name"]);
  data.forEach((key, value) {
    print(value);
  });
  print("***************");
  for (var d in data.values) {
    print(d);
  }
  data["sal"] = 900;
  print("***************");
  for (var d in data.values) {
    print(d);
  }
  print("***************");
  for (var d in data.keys) {
    print(d);
  }
}
