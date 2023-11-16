import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../blocs/counter_controller.dart';

class SecondPage extends StatelessWidget {
  CounterController counterController = Get.find<CounterController>();

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
        child: Text("Your counter value is :${counterController.counter}",style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
