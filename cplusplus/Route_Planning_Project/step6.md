## The RouteModel Class
The Model class that exists in the current code doesn’t contain all the data or methods that will be needed to perform an A* search, so we are going to extend that class with a RouteModel class. In this exercise, you will fill out the RouteModel class in route_model.h. In the next exercises, you will also fill out the RouteModel::Node class as well.

## To complete this exercise:
In route_model.h:

1. Add a private vector of Node objects named m_Nodes. This will store all of the nodes from the Open Street Map data.
2. Add a public “getter” method SNodes. This method should return a reference to the vector of Nodes stored as m_Nodes.

Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/06-2-code-the-routemodel-class/) below for a brief overview of this file.
