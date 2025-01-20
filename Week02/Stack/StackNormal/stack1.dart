void main() {

  Stack stack =Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
print(stack.sum());
  // stack.pop();
  stack.display();
}

class Stack {
  List<int> _stack = [];

  void push(int data) {
    _stack.add(data);
    print("data is passed");
  }
  int sum(){
    int sum =0;
   for(int i =0;i<_stack.length;i++){
   sum=sum+_stack[i];
  }
  return sum;
  }

  int? pop() {
    if (_stack.isEmpty) {
      print("Stack UnderFlow");
     return null;
    } else {
     return  _stack.removeLast();
    }
  
  }

  void display(){
    if(_stack.isEmpty){
      print("Stack UnderFlow");
    }else{
      print("Stack elements $_stack");
    }
  }
}
