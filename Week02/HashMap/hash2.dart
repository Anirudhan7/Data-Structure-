class Hashtable {
  int size;
 late List<List<MapEntry>> array;

  Hashtable(this.size) {
    // Declaring a list with a fixed size where each slot starts as an empty list
    this.array = List.generate(size, (_) => []);
  }

  // Hash function to create an index to place the key-value pair
  int hash(dynamic key) {
    int index = key.hashCode.abs() % size;
    return index;
  }

  // Method to add key-value pairs to the hash table
  void set(dynamic key, dynamic value) {
    int index = hash(key);

    // Create a MapEntry for the key-value pair
    var entry = MapEntry(key, value);

    // Add the entry to the appropriate bucket
    array[index].add(entry);
  }

  // Method to retrieve the value associated with a key
  dynamic get(dynamic key) {
    int index = hash(key);

    // Check the bucket for a matching key
    for (var entry in array[index]) {
      if (entry.key == key) {
        return entry.value; // Return the value if the key matches
      }
    }
    return null; // Return null if the key is not found
  }
}

void main() {
  Hashtable hashlist = Hashtable(5);

  hashlist.set("name", "kiran");
  hashlist.set("placessss", "kollengode");

  print(hashlist.get("placessss")); // Output: kollengode
  print(hashlist.array); // Output: [[MapEntry("placessss": "kollengode")], [], [], [], [MapEntry("name": "kiran")]]
}
