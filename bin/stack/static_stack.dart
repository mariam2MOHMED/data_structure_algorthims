class StaticStack<T>{
final _list=<T>[];
int _size=0;
int _cap=1;
int get size=>_size;
bool isEmpty(){return _size==0;}
bool isNotEmpty(){return _size>0;}
bool _hasSpaceToInsert()=>_size!=_cap;
void _dynamicAlloc(){

  // dynamic allocation
  //1- double capacity
  _cap*=2;
  //2-add all element from an old list to new lit
  final list=List<T?>.filled(_cap, 0 as T,growable: false);
  for(int i=0;i<_size;i++){
    list[i]=_list[i];
  }
  _size++;
}
void push(T element){
  if(!_hasSpaceToInsert()){
 _dynamicAlloc();
  }else{
_dynamicAlloc();
_list[_size]=element;
  }

}
T getPeek(){
  if(_list.isEmpty){
throw(Exception(runtimeType));
  }
  return _list[_size];

}
}