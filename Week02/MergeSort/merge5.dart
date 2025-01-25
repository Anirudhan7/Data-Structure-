List<int> mergeSort(List<int> array){
  int middle =array.length~/2;
  List<int> left =array.sublist(0,middle);
  List<int> right=array.sublist(middle);
  return merge(right,left);
}
List<int> merge(List<int> left,List<int> right){
  List<int> result=[];
  int i =0;
  int j= 0;
  while(i<left.length && j<right.length){
   if(left[i]<=right[j]){
    result.add(left[i]);
    i++;
   }else{
    result.add(right[j]);
    j++;
   }
  }
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
return result;
}