class Graph{

  Map<int,List<int>> graph ={};

  void insert(int vertex,int edge,[bool isbidr=false]){
    if(!graph.containsKey(vertex)){
    graph[vertex] =[];
    }
    if(!graph.containsKey(edge)){
      graph[edge] =[];
    }
    graph[vertex]!.add(edge);

    if(isbidr){
      graph[vertex]!.add(edge);
    }

  }
  void display(){
    graph.forEach((key,edges){
   print('$key : $edges');
    });
  }
}
void main(){
  Graph graph =Graph();
  graph.insert(21, 12);
  graph.insert(31,34);
  graph.insert(31, 13);
  }