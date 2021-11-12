import 'package:get/get.dart';
import 'package:shopping/shopping.dart';

class ShoppingController extends GetxController{
  var shoppingList = List<Shopping>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

  void getData() {
      var result= [
      Shopping(id: 1, name: "Ayakkabı", price: 600),
        Shopping(id: 2, name: "Gömlek", price: 200),
        Shopping(id: 3, name: "Kazak", price: 80),
        Shopping(id: 4, name: "Bilgisayar", price: 10000)
      ];

      shoppingList.value = result;
  }
}