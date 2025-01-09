void main(){
String s ="hello world";
print(reccuL(0,s));
}

String reccuL( int index,String str){
if(index==str.length){
  return "";
}
if(str[index]=='l'){
  return reccuL(index+1,str);
}else{
  return str[index]+reccuL(index+1, str);
}

}