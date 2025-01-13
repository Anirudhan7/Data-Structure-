// implement binary search and replace the number with 0
int binarySearch(List<int> array,int target){
int start=0;
int end=array.length;
while(start<=end){
  int mid =(start+end)~/2.floor();
  if(target>array[mid]){
    start=mid+1;
  }else if(target<array[mid]){
   end =mid-1;
  }else{
    mid=0; //this line
    return mid;

  }
}
return -1;
}

void main(){
  List<int> array =[12,13,23,28,39,50];
  int target =39;
  print(binarySearch(array, target));
}