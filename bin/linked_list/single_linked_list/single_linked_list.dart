import 'node.dart';

class SingleLinkedList<T> {
  Node<T>? _head;
  Node<T>? _tail;
  int? _size;

  SingleLinkedList() {
    _head = null;
    _tail = null;
    _size = 0;
  }

  //O(1)
  int get length => _size!;

  bool get isEmpty => _head == null;

  bool get isNotEmpty => _head != null;

  void _handleEmptyList() {
    if (isEmpty) {
      throw Exception("SingleLinkedList Empty Exception");
    }
  }

  //O(1)
  T front() {
    _handleEmptyList();
    return _head!.data;
  }

  //O(1)
  T back() {
    _handleEmptyList();
    return _tail!.data;
  }

  //O(1)
  void insertBack(T data) {
    Node<T> newNode = Node<T>(data: data);
    _size = _size! + 1;
    if (isEmpty) {
      _head = _tail = newNode;
      return;
    }
    _tail?.next = newNode;
    _tail = newNode;
  }

  //O(1)
  void insertFront(T data) {
    Node<T> newNode = Node<T>(data: data);
    _size = _size! + 1;
    if (isEmpty) {
      _head = _tail = newNode;
      return;
    }
    newNode.next = newNode;
    _head = newNode;
  }

  //O(n)
  void popBack() {
    _handleEmptyList();
    if (_size == 1) {
      _head = _tail = null;
      _size = _size! - 1;
    }
    Node<T> currentNode = _head!;
    while (currentNode.next != _tail) {
      currentNode = currentNode.next!;
    }
    _tail = currentNode;
    _tail!.next = null;
    _size = _size! - 1;
  }

  //O(1)
  void popFront() {
    _handleEmptyList();
    if (_size == 1) {
      _head = _tail = null;
      _size = _size! - 1;
    }
    _head = _head!.next;
    _size = _size! - 1;
  }
}
