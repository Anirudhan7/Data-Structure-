class MinHEAP{
  List<int> heap =[];
  

  void insert(int data){
    heap.add(data);
  }
  void heapifyUp(int index){
    while(index>0){
      int parentIndex =(index-1)~/2;
      if(heap[parentIndex]>heap[index]){
swap(index,parentIndex);
index =parentIndex;
      }else{
        break;
      }
    }
  }

  void swap(int index1 ,int index2){
    int temp =heap[index1];
    heap[index1]=heap[index2];
    heap[index2]=temp;
  }
}