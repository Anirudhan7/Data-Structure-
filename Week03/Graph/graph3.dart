class Graph {
  Map<int, List<int>> graph = {};

  void insert(int vertex, int edge, [bool isbidr = false]) {
    if (!graph.containsKey(vertex)) {
      graph[vertex] = [];
    }
    if (!graph.containsKey(edge)) {
      graph[edge] = [];
    }
    graph[vertex]!.add(edge);

    if (isbidr) {
      graph[edge]!.add(vertex);
    }
  }

  void display() {
    graph.forEach((key, edges) {
      print('$key : $edges');
    });
  }

  void bfs(int vertex) {
    Set visited = {};
    List queue = [];
    queue.add(vertex);
    visited.add(vertex);
    while (queue.isNotEmpty) {
      int current = queue.removeAt(0);
      print(current);

      for (int neighbour in graph[current]!) {
        if (!visited.contains(neighbour)) {
          visited.add(neighbour);
          queue.add(neighbour);
        }
      }
    }
    print(visited);
  }
void bfsAgain(int vertex){
  List<int> queue =[];
  
}
}

void main() {
  Graph graph = Graph();
  graph.insert(21, 12);
  graph.insert(12,31);
  graph.insert(31, 34);
  graph.insert(31, 13);
  graph.bfs(21);

}
