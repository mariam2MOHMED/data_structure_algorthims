//stack based on  dynamic array
class DynamicStack<T> {
  final _list = <T>[];

  //O(1)
  int get length => _list.length;

  //O(1)
  bool get isEmpty => _list.isEmpty;

  //O(1)
  bool get isNotEmpty => _list.isNotEmpty;

  //O(1)
  void push(T element) => _list.add(element);

  //O(1)
  T peek() => _list.last;

  //O(1)
  void pop() => _list.removeLast();
}
//recursion based on stack
//build stack based on dynamic array
//rule =>( last in first out )
//how it works
//5 =>top /peak
//4
//3
//2
//1
