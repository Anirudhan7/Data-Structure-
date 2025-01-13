void main(){

List<int> array=[10,12,13,14,15,6,17,18,19,20];
int target =13;
int result =binarySearch(array, target);
print(result);
}

int binarySearch(List<int> array,int target){

  int start=0;
  int end=array.length-1;
  while(start>=end){
    int middle=(start+end)~/2.floor();
    if(target>middle){
      start=middle+1;
    }else if(target<middle){
      end =middle-1;
    }else{
      return middle;
    }
  }
  return -1;


}