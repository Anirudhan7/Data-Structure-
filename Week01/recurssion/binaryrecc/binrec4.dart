void main() {
List<int> array =[10,20,30,40,50,60];
  int target =50;
  int end =array.length-1;
  int start =0;
  print(binarySearch(array,target,start,end));
}

int binarySearch(List<int> array,int target,int start,int end){
  if(start>end){
    return -1;
  }
  int mid=(start+end)~/2;
  if(target==array[mid]){
  return mid;
  }else if(target<array[mid]){
    return binarySearch(array,target,start,mid-1);
  }else{
    return binarySearch(array,target,mid+1,end);
  }
}
