import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:shopping/cart_controller.dart';
import 'package:shopping/shopping.dart';

class Details extends StatelessWidget {
  CardController cardController = Get.put(CardController());
    Shopping shopping;

    Details({@required this.shopping});

  @override
  Widget build(BuildContext context) {
    return Card(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(shopping.id.toString()),
            SizedBox(width: 10,),
            RaisedButton(
                child: Text("Add To Card"),
                onPressed: (){
              cardController.addtoCard(shopping);
            })
          ],
        ),
        Text(shopping.name),
        Text(shopping.price.toString()),

        ],
    ),
    );
  }
}
