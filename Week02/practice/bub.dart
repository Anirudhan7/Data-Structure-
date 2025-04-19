void main(){
  List<int> array =[0,2,4,5,18,33,1];
  for(int i =0;i<array.length-1;i++){
    for(int j =i+1;j<array.length;j++){
      if(array[i]>array[j]){
        int temp =array[i];
        array[i]=array[j];
        array[j]=temp;
      }
    }
  }
  print(array);
}