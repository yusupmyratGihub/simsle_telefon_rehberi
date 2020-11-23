class Rehber {
  String name;
  String phoneNumber;

  static List<Rehber> contacts = [
    Rehber(name: "Yusuf", phoneNumber: "05999999999999999"),
    Rehber(name: "Ahmet", phoneNumber: "05616139072"),
    Rehber(name: "Myrat", phoneNumber: "05616139072"),
    Rehber(name: "MMuhammet", phoneNumber: "057111111111111111"),
    Rehber(name: "Kerim", phoneNumber: "05666666666666666"),
    Rehber(name: "Jennet", phoneNumber: "0555555555555555"),
  ];
  Rehber({this.name, this.phoneNumber});
}
