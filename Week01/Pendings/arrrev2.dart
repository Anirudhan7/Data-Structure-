void main() {
List<int> array= [1,2,3,4,5,6,7,9];
  int start =0;
  int end =array.length-1;
  
  for(int i =0;i<array.length~/2;i++){
    int temp =array[start];
    array[start]=array[end];
    array[end]=temp;
    end--;
    start++;
  }
  print(array);
}
