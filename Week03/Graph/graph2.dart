class Graph{
  Map<int,List<int>> graph ={};

  void insert(int vertex ,int edge ,[bool isBidir=false]){
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
  void display(){
    print('{');
    graph.forEach((key,edges){
    print('$key : $edges');
    });
    print('}');
  }
}
void main(){

  Graph graph =Graph();
  graph.insert(21, 30);
  graph.insert(30, 12);
  graph.insert(43, 30);
  graph.insert(21, 15);
  graph.insert(15, 7);
  graph.display();
}