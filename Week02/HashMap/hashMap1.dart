import 'dart:collection';
void main(){
  HashMap map =HashMap();
   Map<String ,int> datas ={"a":1,"b":2,"c":3};
    
  map.addAll(datas);
  print(map.runtimeType);
}