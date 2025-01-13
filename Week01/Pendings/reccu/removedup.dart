List<int> reccu(List<int> array,int index,List<int> result){
  if(index==array.length){
    return result;
  }
  if(!result.contains(array[index])){
    result.add(array[index]);
  }
  return reccu(array,index+1,result);
}

void main(){
  List<int> array =[12,23,34,12,34,55,5];
  int index =0;
  List<int> result =[];

  print(reccu(array,index,result));

}