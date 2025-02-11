void main(){
  List<int> array =[12,43,58,01,66,82];
  heapSort(array);
  print(array);
}
void heapSort(List<int> array){
  int n =array.length;
  for(int i=n~/2-1;i>=0;i--){
    heapify(array,n,i);
  }
  for(int i=n-1;i>0;i--){
  int temp =array[0];
  array[0]=array[i];
  array[i]=temp;

   heapify(array,i,0);
    
  }
}
void heapify(List<int> array ,int n,int i){
  int largest =i;
  int left=2*i+1;
  int right =2*i+2;
  if(n>left && array[left]>array[largest]){
    largest=left;
  }
  if(n>right&& array[right]>array[largest]){
    largest=right;
  }
  if(i!=largest){
    int swap =array[i];
 array[i]=array[largest];
 array[largest]=swap;
    heapify(array,n,largest);
  }
}