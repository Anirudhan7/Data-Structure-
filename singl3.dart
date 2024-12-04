void main(){
  List<Map<String,dynamic>> stud =
  [
    {
      "name": "Anirudhan",
      "age": 23,
      "place": "palakkad",
      "marks": [12, 33, 32, 48, 77]
    },
    {
      "name": "terri",
      "age": 25,
      "place": "mumbai",
      "marks": [21, 53, 03, 66, 00]
    },
    {
      "name":"Aisu",
      "age":28,
      "place":"palakkad",
      "marks":[43,68,64,77,92],
    },
    {
      "name":"dheerav",
      "age":3,
      "place":"chennai",
      "marks":[45,100,65,93,23]
    }
  ];
  printDetails(stud);
}

 printDetails(List<Map<String,dynamic>> data){
  
for(int i =0;i<data.length;i++){
  int tot =total(data[i]["marks"]);
  print("name ${data[i]["name"]}");
  print("total marks ${tot}");
}
}

int total(List<int> list){
  int sum=0;
  for( int i =0;i<list.length;i++){
sum=sum+list[i];
  }
  return sum;
}