void main(){
  List<int> nums =[2,1,4,3,5,9,8,0,6];
  for(int i =0;i<nums.length;i++){
    for(int j =i;j<nums.length;j++){
      if(nums[i]>nums[j]){
        int temp =nums[i];
        nums[i]=nums[j];
        nums[j]=temp;
      }
    }
   
  }
   print(nums);
}