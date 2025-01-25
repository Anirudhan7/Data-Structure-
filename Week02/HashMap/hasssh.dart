class Hashtable {
  int size;
  late List<List<MapEntry>> bucket;
  Hashtable(this.size) {
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

  dynamic get(String key) {
    int index = hash(key);
    for (var i in bucket[index]) {
      if (i.key == key) {
        return i.value;
      }
    }
  }
}
