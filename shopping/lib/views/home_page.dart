import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopping/cart_controller.dart';
import 'package:shopping/controller.dart';

import 'details.dart';

class HomePage extends StatelessWidget {

  ShoppingController controller = Get.find();
  CardController cardController = Get.put(CardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(()=>ListView.builder(
                     itemCount: controller.shoppingList.length,
                      itemBuilder: (context,index){
                       return Details(shopping: controller.shoppingList[index]);
          }),
          ),),
          Obx(() => Text("Toplam Fiyat: "+cardController.totalPrice.toString()))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Obx(() => Text(cardController.count.toString()),)
      ),
    );
  }
}
