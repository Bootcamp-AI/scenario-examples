# [This Pointer](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/08-this-pointer/)

To complete this exercise:
In the RouteModel constructor in route_model.cpp, write a for loop with a counter to loop over the vector of Model::Nodes given by this->Nodes().
For each Model node in the loop, use the RouteModel::Node constructor to create a new node, and push the new node to the back of m_Nodes.
To do this, you should use the RouteModel::Node constructor that accepts three arguments:
```
Node(int idx, RouteModel * search_model, Model::Node node)
```
The first argument is given by the counter index. The second argument should be a pointer to the RouteModel instance that the Node belongs to. Since you are writing your code inside the RouteModel constructor, you can use the this keyword to get a pointer to the current RouteModel instance. In other words, you can pass this as the second argument. The last argument is given by the Model::Node in the for loop.

<b>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/09-code-create-routemodel-nodes/) below for a brief overview of this file.</b>