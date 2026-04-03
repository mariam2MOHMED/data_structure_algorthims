class StaticStack<T> {
  List<int> _list = [];
  int _size = 0;
  int _cap = 1;
//O(1)
  int get size => _size;
  //O(1)
int get capacity=>_cap;
  //O(1)
  bool isEmpty() {
    return _size == 0;
  }
//O(1)
  bool isNotEmpty() {
    return _size > 0;
  }
//O(1)
  bool _hasSpaceToInsert() => _size < _cap;
//O(N)
  void _dynamicAlloc() {
    // dynamic allocation
    //1- double capacity
    _cap *= 2;
    //2-add all element from an old list to new lit
    List<int> newList = List.filled(_cap, 0 , growable: false);
    for (int i = 0; i < _size; i++) {
      newList[i] = _list[i];
    }
    _list = newList;

  }
//O(n)
  void push(int element) {
    if (!_hasSpaceToInsert()) {
      _dynamicAlloc();
    } else {

      _list[_size] = element;
      _size++;
    }
  }
//O(1)
  int getPeek() {
    if (isEmpty()) {
      throw (Exception("Stack is empty Exception"));
    }
    return _list[_size-1];
  }
  //O(1)
  int pop(){
    if (isEmpty()) {
      throw (Exception("Stack is empty Exception"));
    }
    int value = _list[_size - 1] ;
    _size--;

     return value;
  }
}
