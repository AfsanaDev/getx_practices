import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../blocs/calculator_controller.dart';
import '../blocs/counter_controller.dart';

class SecondPage extends StatelessWidget {
  CounterController counterController = Get.find<CounterController>();
  CalculatorController calculatorController = Get.find<CalculatorController>();

  SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Back to home screen',style: TextStyle(
          fontSize: 14,
        ),),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Your counter value is :${counterController.counter}",style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
            // CalculatorController(),
            Text("Your final result is : ${calculatorController.finalResult}")
            // TextButton(onPressed: ()=>calculatorController.addTwoNumber(6, 8),
            //     child:Text("Your final result is : ${calculatorController.finalResult}") )
          ],
        ),
      ),
    );
  }
}
