void main(){
  List<int> array =[3,1,5,4,2];
  for(int i =1;i<=array.length-1;i++){
    int temp =array[i];
    int j =i-1;
    while(j>=0 && array[j]>temp){
      array[j+1]=array[j];
      j--;
    }
    array[j+1]=temp;
  }
  print(array);
}