void main(){
    List<int> array =[4,3,5,6,2,1,8,7,9,0];

    for(int i =0;i<array.length;i++){
      for(int j =i;j<array.length;j++){
        if(array[i]>array[j]){
          int temp =array[i];
          array[i]=array[j];
          array[j]=temp;
        }
      }
    }
    print(array);
}