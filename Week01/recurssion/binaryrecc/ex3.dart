int reccuFibo(List<int>arr,int target,int start,int end){
  if(start>end){
    return -1;
  }
  int mid =(start+end)~/2;
  if(target ==arr[mid]){
    return mid;
  }
  if(target>arr[mid]){
  return reccuFibo(arr,target,mid+1,end);
  }else{
    return reccuFibo(arr,target,start,mid-1);
  }
}

void main(){
  List<int> array =[10,20,30,40,50,60];
  int start =0;
  int end =array.length-1;
  int target =40;
  print(reccuFibo(array, target, start, end));
}