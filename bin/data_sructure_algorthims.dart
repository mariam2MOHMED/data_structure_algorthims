import 'dart:collection';

import 'dynamic_array/custom_dynamic_array.dart';
import 'linked_list/single_linked_list/single_linked_list.dart';
void main(){
SingleLinkedList<int>singleLinkedList=SingleLinkedList();
singleLinkedList.insertFront(1);
singleLinkedList.insertFront(2);
singleLinkedList.popBack();
print(singleLinkedList.length);
}