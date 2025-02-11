class MinHeap {
  List<int> heap = [];

  void insert(int data) {
    heap.add(data);
    heapifyUp(heap.length - 1);
  }

  void heapifyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[parentIndex] > heap[index]) {
        swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  void heapifyDown(int index) {
    int length = heap.length;
    while (true) {
      int leftChild = 2 * index + 1;
      int rightChild = 2 * index + 2;
      int smallest = index;
      if (leftChild < length && heap[leftChild] < heap[smallest]) {
        smallest = leftChild;
      }
      if (rightChild < length && heap[rightChild] < heap[smallest]) {
        smallest = rightChild;
      }
      if (smallest != index) {
        swap(smallest, index);
        index = smallest;
      } else {
        break;
      }
    }
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  int? removeMin() {
    if (heap.isEmpty) return null;
    int min = heap.first;
    heap[0] = heap.removeLast();
    if (heap.isNotEmpty) heapifyDown(0);
    return min;
  }
}

void main() {
  MinHeap heap = MinHeap();
  heap.insert(10);
  heap.insert(20);
  heap.insert(30);
  heap.insert(40);
  heap.insert(50);

  print(heap.heap);
  print(heap.removeMin());
  print(heap.heap);
}
