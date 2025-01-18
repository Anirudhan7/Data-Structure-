void main(){

  List<int> array =[2,3,4,5,0,1];
  print(quick(array));

}

List<int> quick(List<int> array){
  if(array.length<=1){
    return array;
  }

int pivote =array[array.length~/2];

List<int> middle=[];
List<int> right=[];
List<int> left=[];
for(int i =0;i<array.length;i++){
  if(array[i]>pivote){
    right.add(array[i]);
  }else if(array[i]<pivote){
    left.add(array[i]);
  }else{
    middle.add(array[i]);
  }
}
return quick(left)+middle+quick(right);
}