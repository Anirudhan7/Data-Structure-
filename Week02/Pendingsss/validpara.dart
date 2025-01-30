void main(){
  String s ='([)]';
  print(validPara(s));
}


bool validPara(String s){
  List stack =[];
  for(int i =0;i<s.length;i++){
    if(s[i]=='('||s[i]=="{"|| s[i]=="["){
      stack.add(s[i]);
    }else{
      if(stack.isEmpty){
        return false;
      }
      String char =stack.removeLast();
      if(char=="("&& s[i]!=')' || char =='[' && s[i]!=']' && char =='{' && s[i]!='}'){
        return  false;
      }
    }
  }
  return stack.isEmpty;
}