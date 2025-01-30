void main(){
  Stack stack = Stack();
  
  stack.push("A");
  stack.push("B");
  stack.push("C");
//     stack.display();
  stack.displayrev();

//   stack.peek();
  
}

class Stack{
  Map<int,String> stack ={};
  int index =0;
   void push(String value){
     stack[index] =value;
     index++;
   }
  pop(){
    index--;
    stack.remove(index);
  }
  display(){
    print(stack);
  }
  peek(){
    print(stack[index-1]);
  }
  displayrev(){
    for( int i = stack.length-1;i>=0;i--){
      print("${i} ${stack[i]}");
    }
  }
  }
