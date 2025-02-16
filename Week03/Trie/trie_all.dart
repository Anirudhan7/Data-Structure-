class Node {
  Map<String, Node> children = {};
  bool isEndOfWord = false;
}

class Trie {
  Node root = Node(); // Root should never be null

  void insert(String word) {
    Node temp = root;
    for (var i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        temp.children[word[i]] = Node();
      }
      temp = temp.children[word[i]]!;
    }
    temp.isEndOfWord = true;
  }

  bool search(String word) {
    Node temp = root;
    for (var i = 0; i < word.length; i++) {
      if (!temp.children.containsKey(word[i])) {
        return false;
      }
      temp = temp.children[word[i]]!;
    }
    return temp.isEndOfWord;
  }

  bool startsWith(String prefix) {
    Node temp = root;
    for (var i = 0; i < prefix.length; i++) {
      if (!temp.children.containsKey(prefix[i])) {
        return false;
      }
      temp = temp.children[prefix[i]]!;
    }
    return true;
  }

  // Longest Common Prefix (LCP)
 String lcp() {
    Node temp = root;
    String prefix = '';

    while (temp.children.length == 1 && !temp.isEndOfWord) {
      String char = temp.children.keys.first;  // ✅ Get the first (only) character
      prefix += char;
      temp = temp.children[char]!;
    }
    return prefix;
  }

  // Find all words that start with a given prefix
  List<String> prefixSearch(String prefix) {
    List<String> results = [];
    Node? temp = root;

    for (var i = 0; i < prefix.length; i++) {
      if (!temp!.children.containsKey(prefix[i])) {
        return results; // Return empty if prefix doesn't exist
      }
      temp = temp.children[prefix[i]];
    }

    _collectWords(temp!, prefix, results);
    return results;
  }

  // Helper function to collect words from a given node
  void _collectWords(Node node, String currentWord, List<String> results) {
    if (node.isEndOfWord) {
      results.add(currentWord);
    }
    for (var char in node.children.keys) {
      _collectWords(node.children[char]!, currentWord + char, results);
    }
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('hello');
  trie.insert('hai');
  trie.insert('hi');
  trie.insert('hellooo');
  trie.insert('hiii');

  print(trie.search('h')); // false (not a full word)
  print(trie.startsWith('u')); // false
  print(trie.lcp()); // "h" (common prefix of all words)
  print(trie.prefixSearch('hi')); // ["hi", "hiii"]
  print(trie.prefixSearch('he')); // ["hello", "hellooo"]
  print(trie.prefixSearch('ha')); // ["hai"]
  print(trie.prefixSearch('x')); // [] (No words found)
}
