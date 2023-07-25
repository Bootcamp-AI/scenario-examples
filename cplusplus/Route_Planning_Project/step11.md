<h2 id="-to-complete-this-exercise">To complete this exercise:</h2>
<ol>
 	<li>Add a <code>FindNeighbor</code> declaration to the <code>RouteModel::Node</code> class in <code>route_model.h</code>. This method will only be used later in another <code>RouteModel::Node</code> method to find the closest node in each <code>Road</code> containing the current node, so <code>FindNeighbor</code> can be a private method. <code>FindNeighbor</code> should accept a <code>vector&lt;int&gt; node_indices</code> argument and return a pointer to a node: <code>RouteModel::Node*</code> type.</li>
 	<li>In <code>route_model.cpp</code> define an empty <code>FindNeighbor</code> method. At this step, compile the code using <code>make</code> to check that your method declaration and empty method definiton have matching signatures.</li>
 	<li>Within the <code>FindNeighbor</code> method, loop through the <code>node_indices</code> vector to find the closest unvisited node. To do this, start with a pointer <code>Node *closest_node = nullptr</code>, and then update <code>closest_node</code> as you find closer nodes in the loop. The following will be useful:
<ul>
 	<li>For each index in the loop, you can retrieve the <code>Node</code> object with <code>parent_model-&gt;SNodes()[index]</code>.</li>
 	<li>For each retrieved <code>Node</code> in the loop, you should check that the node has not been visted (<code>!node.visited</code>) <em>and</em> that the distance to <code>this</code> is nonzero. In other words, you want the closest unvisted node that is not the current node.</li>
 	<li>The <code>RouteModel::Node::distance</code> method can be used to find the distance between two nodes.</li>
</ul>
</li>
</ol>
<h2 id="-pseudocode">## Pseudocode:</h2>
The FindNeighbor method, given a <code>vector&lt;int&gt; node_indices</code>:
<ol>
 	<li>Create a pointer <code>Node *closest_node = nullptr</code></li>
 	<li>Declare a temporary Node variable <code>node</code></li>
 	<li>For each <code>node_index</code> in <code>node_indices</code>
<ol>
 	<li>Set <code>node</code> equal to the <code>parent_model-&gt;SNodes()[node_index]</code></li>
 	<li>If the distance from <code>this</code> to <code>node</code> is nonzero, <em>and</em> the <code>node</code> has not been visited:</li>
 	<li>If the <code>closest_node</code> equals <code>nullptr</code>, <em>or</em> the distance from <code>this</code> to <code>node</code> is less than the distance from <code>this</code> to <code>*closest_node</code>:
<ul>
 	<li>Set <code>closest_node</code> to point to the address of <code>parent_model-&gt;SNodes()[node_index]</code>.</li>
</ul>
</li>
</ol>
</li>
 	<li>Finally, return the <code>closest_node</code>.</li>
</ol>
<strong>Note:</strong> there will be no new tests for this method. The method is private, and will be used as a helper function in a public method in the next exercise.


<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/14-code-write-findneighbor/) below for a brief overview of this file.</strong>