## To complete this exercise:
1. Add a private variable node_to_road in the RouteModel class in route_model.h. This variable should be an unordered_map with an int key type, and a vector of const Model::Road* as the value type.
2. Add a method declaration CreateNodeToRoadHashmap in the RouteModel class in route_model.h. This method will operate only on the node_to_road variable declared above, and only within the RouteModel class, so it can be private, it needs no arguments, and can have void return type.
3. Add a method definition in route_model.cpp. In the body of the method, you will need to do the following:

1. Write a loop that iterates through the vector given by calling Roads().
	2. For each reference &road in the vector, check that the type is not a footway: road.type != Model::Road::Type::Footway. If the road is not a footway:

	1. Loop over each node_idx in the way that the road belongs to: Ways()[road.way].nodes.
	2. If the node index is not in the node_to_road hashmap yet, set the value for the node_idx key to be an empty vector of const Model::Road* objects.
	3. Push a pointer to the current road in the loop to the back of the vector given by the node_idx key in node_to_road.
2. Call CreateNodeToRoadHashmap() in the RouteModel constructor in route_model.cpp.
3. Lastly, add a public getter function GetNodeToRoadMap() in the RouteModel class in route_model.h. This function should return a reference to the node_to_road variable, and it will be primarily used for testing.

Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/13-2-code-create-node-to-road-hash-table/) below for a brief overview of this file.