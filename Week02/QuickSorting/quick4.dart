List<int> quickSort(List<int> array){
  if(array.length<=0){
    return array;
  }
  int pivot =array[array.length~/2];
  List<int> left =[];
  List<int> right =[];
  List<int> middle =[];
  for(int i =0;i<array.length;i++){
    if(array[i]>pivot){
      right.add(array[i]);
    }else if(array[i]<pivot){
      left.add(array[i]);
    }else{
      middle.add(array[i]);
    }
  }
  return quickSort(left)+middle+quickSort(right);
}
void main(){
  List<int> array =[2,1,3,5,8,0,8,34];
  print(quickSort(array));
}