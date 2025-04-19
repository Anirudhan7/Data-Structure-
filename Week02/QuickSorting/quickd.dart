void main(){

}

List<int> quick(List<int> array){
  if(array.length<=1){
    return array;
  }
int pivot=array[array.length~/2];
List<int> middle=[];
List<int> right=[];
List<int> left=[];
for(int i =0;i<array.length;i++){
  if(array[i]>pivot){
    right.add(array[i]);
  }else if(array[i]<pivot){
    left.add(array[i]);
  }else{
    middle.add(array[i]);
  }
}
return quick(left)+middle+quick(right);
}