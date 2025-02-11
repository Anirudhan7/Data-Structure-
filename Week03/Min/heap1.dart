class MinHeap {
  List<int> heap = [];

  MinHeap(List<int> arr) {
    buildheap(arr);
  }

  void buildheap(List<int> arr) {
    heap = arr;
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  void shiftdown(int currentindex) {
    int endindex = heap.length - 1;
    int leftindex = leftchild(currentindex);
    while (leftindex <= endindex) {
      int rightindex = rightchild(currentindex);
      int indextoshift;

      if (rightindex <= endindex && heap[rightindex] < heap[leftindex]) {
        indextoshift = rightindex;
      } else {
        indextoshift = leftindex;
      }

      if (heap[currentindex] > heap[indextoshift]) {
        swap(heap, currentindex, indextoshift);
        currentindex = indextoshift;
        leftindex = leftchild(currentindex);
      } else {
        return;
      }
    }
  }

  void shiftup(currentindex) {
    int parentindex = parent(currentindex);
    while (currentindex > 0 && heap[parentindex] > heap[currentindex]) {
      swap(heap, currentindex, parentindex);
      currentindex = parentindex;
      parentindex = parent(currentindex);
    }
  }

  int peek() {
    return heap[0];
  }

  void remove() {
    swap(heap, 0, heap.length - 1);
    heap.removeLast();
    shiftdown(0);
  }

  void insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftchild(int index) {
    return (2 * index) + 1;
  }

  int rightchild(int index) {
    return (2 * index) + 2;
  }

  void swap(List<int> arr, i, j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  void display() {
    print(heap);
  }
}

void main() {
  List<int> array = [10, 5, 25, 3, 30, 22, 12];
  MinHeap heap = MinHeap(array);
  heap.display();
}
