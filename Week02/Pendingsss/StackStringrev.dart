class Stack{

List<String> _stack  =[];
// void push(String value){
//   for(int i=value.length-1;i>=0;i--){
//     _stack.add(value[i]);
//   }
// }

void push(String value)
{
for(int i =0;i<value.length-1;i++){
_stack.add(value[i]);
}


}
List<String> reversed(){
 List<String> rev =[];
while(_stack.isNotEmpty){
  rev.add(_stack.removeLast());
}
return rev;
}
void pop(){
String removed =_stack.removeLast();
print(removed);
}
void display(){
print(_stack);
}

}
void main(){
  Stack stack =Stack();
  stack.reversed();
  stack.push("zzzhhh");
  stack.display();

}