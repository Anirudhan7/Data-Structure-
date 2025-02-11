import 'dart:collection';

class TrieNode {
  HashMap<String, TrieNode> children = HashMap();
  bool isend = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String str) {
    TrieNode node = root;

    for (var i = 0; i < str.length; i++) {
      var char = str[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }

    node.isend = true;
  }

  bool contains(String str) {
    TrieNode node = root;
    for (var i = 0; i < str.length; i++) {
      if (!node.children.containsKey(str[i])) {
        return false;
      }
      node = node.children[str[i]]!;
    }

    return node.isend; // Check if it's an actual word
  }
}

void main() {
  Trie trie = Trie();

  trie.insert('her');
  trie.insert("hercules");

  print(trie.contains('her'));      // true
  print(trie.contains('hercules')); // true
  print(trie.contains('hero'));     // false
}
