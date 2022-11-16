import 'dart:io';

main() {
  // Products in Cart
  String productName = "Koynek";
  double productPrice = 67;
  int count = 2;
// ************************************
//  login data
  String userName = "Musali Murad";
  // ******************************
  // Bank data
  String kapitalBank = "Kapital Bank";
  String xalqBank = "Xalq bank";
  // **************************

  // payment method
  if (userName != "" || userName != " " || userName.isNotEmpty) {
    if ((productName != "" || productName != " ") && productPrice > 0) {
      print(
          "sebetde olan mehsul: $productName, elave olunmus mehsul sayi: $count, mehsulun bir ededinin qiymet: $productPrice AZN");
      print("umumi qiymet: ${count * productPrice} AZN");
      print("*****" * 5);
      print("Odeme usulu secin");
      print("1) Online odenis");
      print("2) catdirilma");
      print("3) ozum goturecem");
      var userChoose = stdin.readLineSync();
      print("seciminiz: ");
      switch (userChoose) {
        case "1":
          print("Bank secin:");
          print("1) Kapital Bank");
          print("2) Xalq Bank");

          var userChooseBank = stdin.readLineSync();
          if (userChooseBank == "1") {
            print("Kapital Secildi");
          } else if (userChooseBank == "2") {
            print("Xalq bank Secildi");
          } else {
            print("Bu bank yoxdur");
          }

          break;
        case "2":
          print("catdirilma");
          break;
        case "3":
          print("Unvan nizami metrosu cixisi");
          break;
        default:
          print("bele bir secim yoxdur");
      }
    }
  }
}



/*
1.sebetde mehsul olmalidi
2.adam login olubmu
3.bank sechimi(xalq,kapital)
4.kapital odeme sechimleri(6 ayli bole biler, 3 ayliq bole biler ve nagd)
5.xalq (nagd ala biler ve 3 hisseye bole biler)
6.kapital ayliq sechiminde mehsulun qiymetini muddete gore bolub ayliq odenisin ustune mehsulun qiymetin 10 faizi gelmelidir
7.birinci ayin odenisin cixmalidir (kapital)
8.3 hisseye bolende mehsulun qiymetinin umumi 30 faizini qiymeti umumi qiymetinin ustune gelir(xalq)
9.chatdirilmali odeme
*/