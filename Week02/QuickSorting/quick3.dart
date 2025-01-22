

List<int>quickSort(List<int> array){
  if(array.length<=0){
    return array;
  }
List<int> left= [];
List<int> right =[];
List<int> middle=[];

int pivot =array[array.length~/2];
for(int i=0;i<array.length;i++){
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
  List<int> array =[2,1,4,5,9,6,7,0];
  print(quickSort(array));
}