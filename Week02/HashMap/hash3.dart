class HashTable {
  int size;
  late List<List<MapEntry>> bucket;
  HashTable(this.size) {
    bucket = List.generate(size, (_) => []);
  }
  int hash(String key) {
    int index = key.hashCode.abs() % size;
    return index;
  }

  void set(String key, dynamic value) {
    int index = hash(key);
    var entry = MapEntry(key, value);
    bucket[index].add(entry);
  }
  get(String key){
    int index =hash(key);
    for(var entry in bucket[index]){
      if(entry.key==key){
        return entry.value;
      }
    }
  }
  
}
