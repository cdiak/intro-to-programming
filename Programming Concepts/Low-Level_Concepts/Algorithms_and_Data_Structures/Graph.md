## Graph

- A **Graph** is a data structure that consists of a set of **vertices** (or **nodes**) and a set of **edges** (or **arcs**) that connect pairs of vertices. Graphs are used to model relationships between objects in fields such as social networks, transportation networks, and web page linking structures.

### Key Idea:
- **Graphs** represent complex relationships between objects where the objects are vertices, and the relationships between them are edges. Graphs can be **directed** or **undirected**, **weighted** or **unweighted**, and can be used to model a wide variety of real-world problems.

---

### Components of a Graph:

1. **Vertex (Node)**:
   - A **Vertex** represents an object in the graph. In a social network, for example, each person can be a vertex.
   - **Notation**: A vertex is usually denoted as `V`, with a set of vertices being represented as `V = {v1, v2, v3, ..., vn}`.

2. **Edge (Arc)**:
   - An **Edge** is a connection between two vertices. It can represent any relationship or link between the objects (vertices).
   - **Notation**: An edge is represented as a pair of vertices `(u, v)`, where `u` and `v` are vertices. The set of edges is often denoted as `E`.
   - **Example**: In a graph representing a road network, each edge might represent a road connecting two cities (vertices).

3. **Directed Edge**:
   - A **Directed Edge** has a direction, meaning it points from one vertex to another. These graphs are called **directed graphs** (or **digraphs**). For example, in a Twitter follower graph, if `A` follows `B`, there is a directed edge from `A` to `B`.

4. **Undirected Edge**:
   - An **Undirected Edge** does not have a direction, meaning the relationship between the vertices is bidirectional. For example, in a Facebook friendship graph, if `A` is friends with `B`, there is an undirected edge between them.

5. **Weighted Edge**:
   - A **Weighted Edge** assigns a weight or cost to the connection between two vertices. Weights can represent distances, times, or other quantities.
   - **Example**: In a road network, the weight of an edge could represent the distance between two cities.

6. **Path**:
   - A **Path** is a sequence of vertices where each consecutive pair is connected by an edge. The **length** of a path is the number of edges it contains.

7. **Cycle**:
   - A **Cycle** is a path in which the first and last vertices are the same, forming a loop.

---

### Types of Graphs:

1. **Undirected Graph**:
   - In an **Undirected Graph**, edges do not have a direction. The relationship between two vertices is bidirectional.
   - **Example**:
     ```
     A --- B
      \   /
       C
     ```
     - In this graph, `A` is connected to `B`, and `B` is connected to `C`. Relationships can be traversed in either direction.

2. **Directed Graph (Digraph)**:
   - In a **Directed Graph**, edges have directions, meaning that the relationship between two vertices flows in one direction.
   - **Example**:
     ```
     A → B
     ↑   ↓
     C ← D
     ```
     - In this graph, the edges show the direction of relationships. For instance, there is an edge from `A` to `B`, but not from `B` to `A`.

3. **Weighted Graph**:
   - In a **Weighted Graph**, each edge has a numerical value (weight) associated with it. This weight might represent cost, distance, or any other metric.
   - **Example**:
     ```
     A --2-- B
      \     /
       1   3
        \ /
         C
     ```
     - In this graph, the edges have weights: `A` to `B` has a weight of 2, `A` to `C` has a weight of 1, and `B` to `C` has a weight of 3.

4. **Connected Graph**:
   - A **Connected Graph** is a graph in which there is a path between every pair of vertices. In an undirected graph, all vertices are connected either directly or indirectly.

5. **Disconnected Graph**:
   - A **Disconnected Graph** is a graph where some vertices are not reachable from others. There is at least one pair of vertices between which there is no path.

6. **Complete Graph**:
   - A **Complete Graph** is a graph in which every pair of vertices is connected by a unique edge.
   - **Example**:
     ```
     A --- B
      \   /
       C
      / \
     D---E
     ```

7. **Acyclic Graph**:
   - An **Acyclic Graph** is a graph that has no cycles. In directed graphs, this is called a **Directed Acyclic Graph (DAG)**, which is useful for representing tasks that must be performed in a specific order (e.g., scheduling tasks).

8. **Tree**:
   - A **Tree** is a special kind of graph that is connected and acyclic. A tree with `n` vertices has `n-1` edges.
   - **Example**:
     ```
         A
        / \
       B   C
          / \
         D   E
     ```

---

### Graph Representations:

1. **Adjacency Matrix**:
   - An **Adjacency Matrix** is a 2D array (matrix) of size `n x n`, where `n` is the number of vertices. The element at `matrix[i][j]` is `1` if there is an edge between vertex `i` and vertex `j`, and `0` otherwise. For weighted graphs, the value of `matrix[i][j]` is the weight of the edge.
   - **Example (Undirected Graph)**:
     ```
     Graph:      Adjacency Matrix:
     A---B       A B C
     |   |       A [0 1 1]
     C---D       B [1 0 1]
                 C [1 1 0]
                 D [0 1 0]
     ```

2. **Adjacency List**:
   - An **Adjacency List** is a collection of lists, where each list represents a vertex and contains all its adjacent vertices.
   - **Example**:
     ```
     Graph:      Adjacency List:
     A---B       A -> [B, C]
     |   |       B -> [A, D]
     C---D       C -> [A, D]
                 D -> [B, C]
     ```

3. **Edge List**:
   - An **Edge List** is a list of all the edges in the graph. Each edge is represented as a pair of vertices (for unweighted graphs) or a triplet (for weighted graphs).
   - **Example**:
     ```
     Graph:      Edge List:
     A---B       [(A, B), (A, C), (B, D), (C, D)]
     |   |
     C---D
     ```

---

### Graph Traversal Algorithms:

1. **Depth-First Search (DFS)**:
   - **DFS** explores a graph by starting at the root (or any arbitrary node) and going as deep as possible along each branch before backtracking.
   - **Example**:
     ```python
     def dfs(graph, start, visited=None):
         if visited is None:
             visited = set()
         visited.add(start)
         print(start, end=' ')
         for neighbor in graph[start]:
             if neighbor not in visited:
                 dfs(graph, neighbor, visited)

     # Example usage
     graph = {
         'A': ['B', 'C'],
         'B': ['A', 'D'],
         'C': ['A', 'D'],
         'D': ['B', 'C']
     }
     dfs(graph, 'A')  # Output: A B D C
     ```

2. **Breadth-First Search (BFS)**:
   - **BFS** explores the graph level by level, starting at the root and visiting all neighbors at the present depth before moving on to the nodes at the next level.
   - **Example**:
     ```python
     from collections import deque

     def bfs(graph, start):
         visited = set()
         queue = deque([start])
         visited.add(start)
         while queue:
             vertex = queue.popleft()
             print(vertex, end=' ')
             for neighbor in graph[vertex]:
                 if neighbor not in visited:
                     visited.add(neighbor)
                     queue.append(neighbor)

     # Example usage
     graph = {
         'A': ['B', 'C'],
         'B': ['A', 'D'],
         'C': ['A', 'D'],
         'D': ['B', 'C']
     }
     bfs(graph, 'A')  # Output: A B C D
     ```

---

### Graph Algorithms:

1. **Dijkstra’s Algorithm**:
   - **Dijkstra's Algorithm** finds the shortest path between a starting node and all other nodes in a weighted graph. It uses a priority queue (min-heap) to explore the closest nodes first.
   - **Example**:
     ```python
     import heapq

     def dijkstra(graph, start):
         distances = {vertex: float('infinity') for vertex in graph}
         distances[start] = 0
         pq = [(0, start)]
         while pq:
             current_distance, current_vertex = heapq.heappop(pq)
             if current_distance > distances[current_vertex]:
                 continue
             for neighbor, weight in graph[current_vertex]:
                 distance = current_distance + weight
                 if distance < distances[neighbor]:
                     distances[neighbor] = distance
                     heapq.heappush(pq, (distance, neighbor))
         return distances

     # Example usage
     graph = {
         'A': [('B', 1), ('C', 4)],
         'B': [('A', 1), ('D', 2)],
         'C': [('A', 4), ('D', 5)],
         'D': [('B', 2), ('C', 5)]
     }
     print(dijkstra(graph, 'A'))  # Output: {'A': 0, 'B': 1, 'C': 4, 'D': 3}
     ```

2. **Prim’s Algorithm**:
   - **Prim’s Algorithm** is used to find the **Minimum Spanning Tree (MST)** of a graph. It grows the MST by adding the smallest edge that connects a vertex inside the tree to a vertex outside the tree.

3. **Kruskal’s Algorithm**:
   - **Kruskal’s Algorithm** is another algorithm for finding the **Minimum Spanning Tree (MST)** of a graph. It adds the smallest edges one by one, ensuring no cycles are formed.

4. **Bellman-Ford Algorithm**:
   - **Bellman-Ford** is an algorithm for finding the shortest path in a weighted graph. Unlike Dijkstra’s algorithm, it works with negative edge weights.

---

### Applications of Graphs:

1. **Social Networks**:
   - Graphs are used to model relationships between people, where vertices represent users and edges represent friendships or follower relationships.

2. **Route Optimization**:
   - Graphs are used to model transportation networks, helping to find the shortest path, optimize traffic flow, or find the least-cost routes.

3. **Web Page Ranking**:
   - Search engines use graphs to represent web pages (as vertices) and hyperlinks (as edges). The **PageRank** algorithm analyzes this graph to rank web pages.

4. **Scheduling**:
   - Graphs are used to represent tasks and their dependencies, particularly in **Directed Acyclic Graphs (DAGs)**, to optimize task scheduling and execution.

---

### Real-World Analogy:
- A **Graph** is like a **road map**:
   - Each **city** on the map is a vertex, and each **road** connecting the cities is an edge. If some roads are one-way, the map is a **directed graph**. If the roads have distances, the graph is **weighted**. The map helps you find the best route, just as a graph helps solve problems like shortest paths.

---

### Related Concepts:
- [[Tree]]: A tree is a special kind of graph where there are no cycles and there is only one path between any two vertices.
- [[Binary Tree]]: A type of tree where each node has at most two children.
- [[Algorithm]]: Many graph algorithms are used to solve problems related to searching, pathfinding, and optimization.

Graphs are versatile and powerful data structures used in a wide range of applications, from modeling networks to solving complex optimization problems. Understanding graph theory and algorithms is fundamental in fields like computer science, data analysis, and artificial intelligence.