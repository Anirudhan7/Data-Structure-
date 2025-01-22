import 'dart:collection';
void main(){
Map<String,dynamic> map =Map();


map["Name"] ="Anirudhan";
map['age']=24;
map['place']="Palakkad";
map.containsKey("apple");
map.update("Name", (value)=>"Dheerav");
for(var i in map.values){
  print(i);
}
}