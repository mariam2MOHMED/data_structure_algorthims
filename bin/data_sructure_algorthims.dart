import 'dynamic_array/custom_dynamic_array.dart';

void main(){
  CustomDynamicArray array=CustomDynamicArray();
  print(array.getSize());
  print(array.getCapacity());
  array.addElement(6);
  print(array.getSize());
  print(array.getCapacity());
  array.addElement(8);
  array.addElement(9);
  print(array.getSize());
  print(array.getCapacity());
}