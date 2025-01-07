void main() {
List<int> array= [1,2,3,4,5,6,7,9];
  int start =0;
  int end =array.length-1;
  while(start<end){
   int temp =array[start];
   array[start]=array[end];
    array[end]=temp;
   start++;
    end--;
  }
  print(array);
}
