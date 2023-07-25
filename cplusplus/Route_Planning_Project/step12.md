<h4 id="-to-complete-this-exercise">To complete this exercise:</h4>
<ol>
 	<li>Add a public <code>FindNeighbors</code> declaration to the <code>RouteModel::Node</code> class in <code>route_model.h</code>. This method will be called from <code>route_planner.cpp</code>, so the method needs to be public. <code>FindNeighbors</code> should take no arguments and have <code>void</code> return type.</li>
 	<li>In <code>route_model.cpp</code> define the <code>FindNeighbors</code> method.</li>
 	<li>With the <code>FindNeighbors</code> method, for each road reference <code>&amp;road</code> in the vector <code>parent_model-&gt;node_to_road[this-&gt;index]</code>, <code>FindNeighbors</code> should use the <code>FindNeighbor</code> method to create a pointer of <code>RouteModel::Node*</code> type.</li>
 	<li>If that pointer is not a <code>nullptr</code>, push the pointer to the back of <code>this-&gt;neighbors</code>.</li>
</ol>
</div>
</div>

<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/15-code-write-findneighbors/) below for a brief overview of this file.</strong>