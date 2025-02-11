class Graph{
  Map<int,List<int>> graph ={};
  
  void insert(int vertex ,int edge,[bool isBidir =false]){
    if(!graph.containsKey(vertex)){
      graph[vertex]=[];
    }
    if(!graph.containsKey(edge)){
      graph[edge]=[];
      
    }
    graph[vertex]!.add(edge);
    if(isBidir){
      graph[edge]!.add(vertex);
    }
  }
  void bfs(int vertex){
  Set visited ={};
  List queue =[];
  queue.add(vertex);
  visited.add(vertex);
  while(queue.isNotEmpty){
    int current =  queue.removeAt(0);

    for(int neighbour in graph[current]!){
      if(!visited.contains(neighbour));
      visited.add(neighbour);
      queue.add(neighbour);
    }
  }
  print(visited);
  }

  void dfs(int vertex){
    if(graph.containsKey(vertex)){
      Set<int> visited ={};
      _dfshelper(vertex, visited);

    }
  }
  
  void _dfshelper(int vertex ,Set<int> visited){
    visited.add(vertex);
    for(int i in graph[vertex]!){
      if(!visited.contains(i)){
        _dfshelper(i, visited);
      }
    }
  }
}

void main (){
  Graph graph =Graph();
  graph.insert(12, 20);
  graph.insert(20, 30);
  graph.insert(12, 30);
  graph.dfs(32);
  graph.bfs(12);
}