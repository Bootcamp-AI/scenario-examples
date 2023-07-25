
# main.cpp
## The main.cpp controls the flow of the program, accomplishing four primary tasks:
<ul>
  <li>The OSM data is read into the program.</li>
  <li>A RouteModel object is created to store the OSM data in usable data structures.</li>
  <li>A RoutePlanner object is created using the RouteModel. This planner will eventually carry out the A* search on the model data and store the search results in the RouteModel.</li>
  <li>The RouteModel data is rendered using the IO2D library.</li>
</ul>

Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/03-io2d-starter-code/) below for a brief overview of this file.
