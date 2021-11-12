import 'package:get/get.dart';
import 'package:shopping/shopping.dart';

class CardController extends GetxController{
  var cardItems = List<Shopping>().obs;
  double get totalPrice => cardItems.fold(0, (sum, element) => sum+element.price);
  int get count => cardItems.length;

  addtoCard(Shopping shopping){
    cardItems.add(shopping);
  }
}