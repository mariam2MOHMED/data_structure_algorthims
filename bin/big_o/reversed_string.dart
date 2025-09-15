String reversedString1(String txt){
  return txt.split("").reversed.join().toString();
}
String reversedString2(String txt){
  String reversed="";
  for(int i=txt.length-1;i>=0;i--){
    reversed+=txt[i];
  }
  return reversed;
}
void main(){
  Stopwatch stopwatch=Stopwatch()..start();
//
//   String s1=reversedString1("kalm");
//   print(s1);
// print("reversed String excuted in  reversedString1 ${stopwatch.elapsed}");
  String s2=reversedString2("noah");
  print(s2);
 print("reversed String excuted in  reversedString2 ${stopwatch.elapsed}");
}