import 'package:get/get.dart';
import 'dart:io';

class CalculatorController extends GetxController{
  var finalResult = 0.obs;
   addTwoNumber( int numOne, int numTwo){
    finalResult = (numOne + numTwo) as RxInt;
    //print('');
  }



}