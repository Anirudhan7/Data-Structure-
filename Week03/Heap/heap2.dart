class Heap {
  List<int> heap = [];

  MinHeap(List<int> array) {
    buildHeap(array);
  }

  void buildHeap(List<int> array) {
    for (var i = parent(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  int leftchild(int index) {
    return 2 * index - 1;
  }

  int rightchild(int index) {
    return 2 * index - 2;
  }

  void swap(List<int> array, int i, int j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }

  void shiftdown(int currentIndex) {
int endIndex =heap.length-1;
int leftIndex = leftchild(currentIndex);

  }
}
