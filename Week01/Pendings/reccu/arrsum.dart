

void main(){
List<int> array= [1,2,3,4,5,6,7,9];
int index =0;
print(recuu(array, index));

}
int recuu(List<int> array,int index){
if(index==array.length){
  return 0;
}
return array[index] + recuu(array, index+1);
}