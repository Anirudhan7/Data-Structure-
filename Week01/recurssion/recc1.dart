


String rever(String s){
  if(s.isEmpty){
    return "";
  }
  return s[s.length-1]+rever(s.substring(0,s.length-1));
}

main(){

String s ="HELLO";


}