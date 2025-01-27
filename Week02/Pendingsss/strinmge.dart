void main() {
  String s = "DDBBSSSAA";
 print(mergeSort(s));
  }
        
String mergeSort(String value){
  if(value.length<=1){
    return value;
  }
  int middle = value.length~/2;
  String left = mergeSort(value.substring(0,middle));
  String right =mergeSort(value.substring(middle));
  return merge(left,right);
  
}  

String merge(String left,String right){
  String result ='';
  int i =0;
  int j =0;
  while(i<left.length &&j<right.length){
    if(left.codeUnitAt(i)<right.codeUnitAt(j)){
      result =result+left[i];
      i++;
    }else{
      result =result+right[j];
      j++;
    }
  }
  result =result+left.substring(i);
  result =result+right.substring(j);
  return result;
}
