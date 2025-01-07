void main(){
  
  List<int> array =[12,23,43,54,65,54,12];
  List<int> result =[];
  
  for(int i =0;i<array.length;i++){
    if(!result.contains(array[i])){
      result.add(array[i]);
    }
  }
  print(result);
}