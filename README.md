# 3D-Object-Editor:

</br>

```ruby
Compiler    : Delphi10 Seattle, 10.1 Berlin, 10.2 Tokyo, 10.3 Rio, 10.4 Sydney, 11 Alexandria, 12 Athens
Components  : None
Discription : 3D- Object Editor
Last Update : 10/2025
License     : Freeware
```

</br>

OBJ (or .OBJ) is a geometry definition file format first developed by [Wavefront Technologies](https://en.wikipedia.org/wiki/Wavefront_Technologies) for The Advanced Visualizer animation package. It is an open file format and has been adopted by other [3D-Computer Graphics](https://en.wikipedia.org/wiki/3D_computer_graphics) application vendors.

The OBJ file format is a simple data-format that represents 3D geometry alone – namely, the position of each [Vertex](https://en.wikipedia.org/wiki/Vertex_(geometry)), the UV position of each [texture coordinate vertex](https://en.wikipedia.org/wiki/UV_mapping), [vertex normals](https://en.wikipedia.org/wiki/Vertex_normal), and the faces that make each polygon defined as a list of vertices, and texture vertices. Vertices are stored in a counter-clockwise order by default, making explicit declaration of face normals unnecessary. OBJ coordinates have no units, but OBJ files can contain scale information in a human readable comment line.

</br>

![3D-Object Editor](https://github.com/user-attachments/assets/b6cccc13-6bc8-4b6d-8c9b-66ef33acc1b2)

</br>

### Create Object:
The editor can edit graphics in three different ways:
* By entering coordinates
* By setting vertex points with the mouse
* By generating random objects

To create an object yourself, vertex points must be created in space, which then need to be connected to each other. The coordinates of a vertex point are defined in X–Y–Z. In the file, the first line specifies the number of vertex points in space. The following numbers indicate where in space the vertex point is located and to which points it should connect.

For a simple square, the file would look like this:
```
8
-50
-50
-50
50
-50
-50
50
-50
50
-50
-50
50
-50
50
50
50
50
50
50
50
-50
-50
50
-50
12
0
1
1
2
2
3
0
3
4
5
5
6
6
7
0
7
1
6
2
5
3
4
4
7
```

These coordinates work, but they are only a rough estimate. For a very precise specification, such as placing vertex points in space, the coordinates must be specified in decimal numbers, which then look like this:

```
Vertex list:
Vertex 0: X: 74,944389     Y: -0,000000     Z: 0,379579
Vertex 1: X: 73,227165     Y: -1,048544     Z: -11,324133
Vertex 2: X: 69,729393     Y: -2,097089     Z: -22,493649
Vertex 3: X: 64,575188     Y: -3,145633     Z: -32,863060
Vertex 4: X: 57,927582     Y: -4,194177     Z: -42,191998
Vertex 5: X: 49,983578     Y: -5,242721     Z: -50,271168
Vertex 6: X: 40,968517     Y: -6,291265     Z: -56,927029
Vertex 7: X: 31,129755     Y: -7,339809     Z: -62,025391
Vertex 8: X: 20,729977     Y: -8,388353     Z: -65,474060
Vertex 9: X: 10,040225     Y: -9,436896     Z: -67,224236
```

Then these coordinates must be connected so that it looks like this:

```
Face list:
Face 0:    A:0 B:1 C:42 AB:1 BC:1 CA:0
Smoothing: 1 
Face 1:    A:0 B:42 C:41 AB:0 BC:1 CA:1
Smoothing: 1 
Face 2:    A:1 B:2 C:43 AB:1 BC:1 CA:0
Smoothing: 12 
Face 3:    A:1 B:43 C:42 AB:0 BC:1 CA:1
Smoothing: 12 
Face 4:    A:2 B:3 C:44 AB:1 BC:1 CA:0
Smoothing: 2 
Face 5:    A:2 B:44 C:43 AB:0 BC:1 CA:1
Smoothing: 2 
Face 6:    A:3 B:4 C:45 AB:1 BC:1 CA:0
Smoothing: 2 
Face 7:    A:3 B:45 C:44 AB:0 BC:1 CA:1
Smoothing: 2 
Face 8:    A:4 B:5 C:46 AB:1 BC:1 CA:0
Smoothing: 2
```

</br>

In [discrete mathematics](https://en.wikipedia.org/wiki/Discrete_mathematics), and more specifically in [graph theory](https://en.wikipedia.org/wiki/Graph_theory), a vertex (plural vertices) or node is the fundamental unit of which graphs are formed: an [undirected graph](https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)#Graph) consists of a set of vertices and a set of [edges](https://en.wikipedia.org/wiki/Glossary_of_graph_theory#edge) (unordered pairs of vertices), while a [directed graph](https://en.wikipedia.org/wiki/Directed_graph) consists of a set of vertices and a set of arcs (ordered pairs of vertices). In a diagram of a graph, a vertex is usually represented by a circle with a label, and an edge is represented by a line or arrow extending from one vertex to another.

* A graph with 6 vertices and 7 edges where the vertex number 6 on the far-left is a leaf vertex or a pendant vertex  
</br>


</br>

From the point of view of graph theory, vertices are treated as featureless and indivisible [objects](https://en.wikipedia.org/wiki/Mathematical_object), although they may have additional structure depending on the application from which the graph arises; for instance, a [semantic network](https://en.wikipedia.org/wiki/Semantic_network) is a graph in which the vertices represent concepts or classes of objects.

* Example network with 8 vertices (of which one is isolated) and 10 edges.  
<img width="217" height="133" alt="Small_Network" src="https://github.com/user-attachments/assets/4430ff48-14a7-46c0-afb0-d20e4efb693c" />

</br>

The two vertices forming an edge are said to be the endpoints of this edge, and the edge is said to be incident to the vertices. A vertex w is said to be adjacent to another vertex v if the graph contains an edge (v,w). The neighborhood of a vertex v is an [induced subgraph](https://en.wikipedia.org/wiki/Induced_subgraph) of the graph, formed by all vertices adjacent to v.



