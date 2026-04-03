import 'dart:convert';

class CustomDynamicArray {
  List<int> _arr = List.filled(1, 0, growable: false);
  int _capacity = 1;
  int _size = 0;
//O(1)
  int getSize() {
    return _size;
  }
//O(1)
  int getCapacity() {
    return _capacity;
  }
//O(n)
  void _dynamicAllocation() {
    //1-double capacity
    _capacity *= 2;
    //2-add all elements from an old array to a new array
    List<int> newList = List.filled(_capacity, 0, growable: false);
    for (int i = 0; i < _arr.length; ++i) {
      newList[i] = _arr[i];
    }
    _arr = newList;
  }
//O(n)
  void addElement(int element) {
    if (_capacity == _size) {
      //full =>dynamic array
      //1-create a new array with a bigger size
      //2-shift old elements from an old array to a new array
      //3-add new element
      ////o(n)
      _dynamicAllocation();
    }
    _arr[_size] = element;
    _size++;
  }
  //O(n)
  void printList() {
    for (int i = 0; i < _size; i++) {
      print(_arr[i]);
    }
  }
  //O(n)
  void getAllList() {
    for (var item in _arr) {
      print(item);
    }
  }
}
