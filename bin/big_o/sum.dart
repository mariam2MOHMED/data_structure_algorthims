void main(){
  Stopwatch stopwatch=Stopwatch()..start();
  // print(summation1(5));
  // print("summation1 excute at ${stopwatch.elapsed}");
  print(summation2(5));
  print("summation1 excute at ${stopwatch.elapsed}");
}
int summation1(int n){
  int sum=0;
  for(int i=0;i<=n;i++){
    sum+=i;
  }
  return sum;
}
double summation2(int n){
  double sum=(n*(n+1))/2;
  return sum;
}