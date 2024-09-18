  import 'package:get/get.dart';

class DropdownMenuController extends GetxController {


  var height = 0.0.obs;

  void toggle(double value){
    if(height.value == value){
      height.value = 0.0;
    }else{
      height.value = value;
    }
  }

}