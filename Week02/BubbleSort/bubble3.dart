void main(){
  List<int> nums =[2,1,3,4,5,7,9,0,6];

  for(int i =0;i<nums.length-1;i++){
    for(int j =i+1;j<nums.length;j++){
      if(nums[i]>nums[j]){
         int temp =nums[i];
         nums[i]=nums[j];
         nums[j]=temp;
      }
    }
  }
  print(nums);
  }