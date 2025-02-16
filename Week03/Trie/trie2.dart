import 'dart:collection';

class Node {
  Map<String, Node> children = HashMap();
  bool isEnd = false;
}

class Trie {
  Node root = Node();
  void insert(String word) {
    Node temp = root;
    for (int i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        temp.children[word[i]] = Node();
      }
      temp = temp.children[word[i]]!;
    }
    temp.isEnd = true;
  }

  bool search(String word) {
    Node temp = root;
    for (int i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        return false;
      }
      temp = temp.children[word[i]]!;
    }
    return temp.isEnd;
  }

  String lcp() {
    Node temp = root;
    String prefix = '';
    while (temp.children.length == 1 && !temp.isEnd) {
      String char = temp.children.keys.first;
      prefix = prefix + char;
      temp = temp.children[char]!;
    }
    return prefix;
  }

  List<String> prefixSearch(String prefix){
    List<String> result =[];
    Node? temp =root;
    for(int i=0;i<prefix.length;i++){
      if(!temp!.children.containsKey(prefix[i])){
        return result;
      }
      temp =temp.children[prefix[i]]!;
    }
    _collectWords(temp!,prefix, result);
    return result;

  }
  void _collectWords(Node node,String currentWord,List<String> result){
    if(node.isEnd){
      result.add(currentWord);
    }
    for(var i in node.children.keys){
      _collectWords(node.children[i]!, currentWord+i, result);
    }
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('he');
  trie.insert('hello');
  trie.insert('helloHi');
  trie.insert('weee');
  print(trie.search('hello'));
  print(trie.lcp());
}
