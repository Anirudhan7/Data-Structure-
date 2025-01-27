String quickSort(String value){
  if(value.length<=0){
    return value;
  }
  String pivot =value[value.length~/2];

  String left ='';
  String right ='';
  String middle='';
  for(int i =0;i<value.length;i++){
    if(pivot.codeUnitAt(0)>value[i].codeUnitAt(0)){
      right=right+value[i];
    }else if(pivot.codeUnitAt(0)<value[i].codeUnitAt(0)){
      left=left+value[i];
    }else{
      middle=middle+value[i];
    }
  }
  return quickSort(left)+middle+quickSort(right);
}

void main(){
  String s ="SSaaAAnn";
  print(quickSort(s));
}