class DynamicStack<T> {
  final _list = <T>[];

  int get length => _list.length;

  bool get isEmpty => _list.isEmpty;

  bool get isNotEmpty => _list.isNotEmpty;

  void push(T element) => _list.add(element);

  T Peek() => _list.last;

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

