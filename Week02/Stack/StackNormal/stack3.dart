void main(){

}
class Stack{
List<int> _stack =[];
 void push(int data){
  _stack.add(data);
 }

 void pop(){
 if(_stack.isEmpty){
  print("Stack underflow");
 }else{
  _stack.removeLast();
 }
 } 
 void display(){
  if(_stack.isEmpty){
    print("Stack underFloww");
  }else{
    print(_stack);
  }
 }
}