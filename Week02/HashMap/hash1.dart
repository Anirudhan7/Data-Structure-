class HashTable {
  int size;
  late List<List<MapEntry>> bucket;
  HashTable(this.size) {
    bucket = List.generate(size, (_)=>[]);
  }

  int hash(dynamic key){
    int index =key.hashCode.abs()%size;
    return index;
  }

  void set(dynamic key ,dynamic value){
     int index =hash(key);
     var entry =MapEntry(key,value);
     bucket[index].add(entry);
  }
  dynamic get(dynamic key){
    int index =hash(key);
    for(var entry in bucket[index]){
      if(entry.key==key){
        return entry.value;
      }
    }
    return null;
  }
}

void main(){
  HashTable hashList =HashTable(5);
  hashList.set("Name", "Anirudhan");
  hashList.set("Place","Palakkad");
  print(hashList.get("Name"));
  print(hashList.bucket);
}
