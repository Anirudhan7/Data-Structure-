void main(){
  List<int> array =[11,12,10,43,23,95,90];
  int large =array[0];
  int secondlarge =array[0];
  for(int i=1;i<array.length;i++){
    if(array[i]>large){
      secondlarge=large;
      large =array[i];
    }else if(array[i]>secondlarge &&array[i]!=large){
      secondlarge=array[i];
    }
  }
  print(secondlarge);
}