void main(){
  List<int> nums= [2,1,4,7,5,6,0];
  for(int i =1;i<nums.length;i++){
    int temp =nums[i];
    int j=i-1;
    while(j>=0 && nums[j]>temp){
      nums[j+1]=nums[j];
      j--;
    }
    nums[j+1]=temp;
  }
  print(nums);
}