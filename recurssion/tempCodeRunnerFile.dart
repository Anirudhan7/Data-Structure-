
main(){
print(recc("SAS"));


}

bool recc(String s){
if(s.length<=1){
return true;
}if(s[0]==s[s.length-1]){
  return recc(s.substring(1,s.length-1));
}else{
  return false;
}
}