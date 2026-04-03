class DynamicQueue<T> {
  final _list = <T>[];

  //O(1)
  bool get isEmpty => _list.isEmpty;

  //O(1)
  bool get isNotEmpty => _list.isNotEmpty;

  //O(1)
  int get length => _list.length;

  //O(1)
  void push(T element) {
    _list.add(element);
  }

  //O(1)
  T front() => _list.first;

  //O(n)
  void pop() {
    if (isEmpty) {
      throw (Exception("Queue Empty Exception"));
    }
    _list.removeAt(0);
  }
}
