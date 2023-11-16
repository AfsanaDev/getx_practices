
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practices/blocs/counter_controller.dart';

class HomeScreen extends StatelessWidget {
 CounterController counterController = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GetX Practice'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
              '${counterController.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> counterController.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}