

import 'dart:collection';

class TrieNode{
  HashMap<String,TrieNode> children =HashMap();
  bool isend=false;
  
}
class Trie{
  TrieNode root =TrieNode();

  void insert(String s){
    TrieNode node=root;

  for(var i=0;i<s.length;i++){
    var char =s[i];
    if(!node.children.containsKey(char)){
      node.children[char]=TrieNode();
    }
    node=node.children[char]!;
  }
  node.isend=false;
  }

  bool contains(String str){
    TrieNode node=root;
    for(var i =0;i<str.length;i++){
      
    }
  }
}