void main(){
List<int> array =[10,6,5,4,7,5,3,2,9];
print(quickSort(array));
}


List<int> quickSort(List<int> array){
  if(array.length<=1){
    return array;
  }
  int pivot =array[array.length~/2];
  List<int> left=[];
  List<int> right =[];
  List<int> middle=[];
  for(int i =0;i<array.length;i++){
    if(array[i]<pivot){
     left.add(array[i]);
    }else if(array[i]>pivot){
     right.add(array[i]);
    }else{
      middle.add(array[i]);
    }
  }
  return quickSort(left)+middle+quickSort(right);
}