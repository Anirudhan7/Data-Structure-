List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int middle = array.length ~/ 2;
  List<int> left = mergeSort(array.sublist(0, middle));
  List<int> right = mergeSort(array.sublist(middle));

  return merge(left, right);
}

List<int> merge (List<int> left,List<int> right){
  List<int> result=[];
 int i =0;
 int j =0;
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
void main(){
  List<int>array =[2,1,4,3,0,6,5];
  print(mergeSort(array));
}