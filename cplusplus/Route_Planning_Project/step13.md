<h4 id="-to-complete-this-exercise">To complete this exercise:</h4>
<ol>
 	<li>Add a public method declaration <code>FindClosestNode</code> in the <code>RouteModel</code> class in <code>route_model.h</code>. This method should accept two floats <code>x</code> and <code>y</code> as arguments, and should return a reference to a <code>RouteModel::Node</code> object.</li>
 	<li>Add a method definition <code>route_model.cpp</code></li>
 	<li>In the body of the method, you will need to do the following:</li>
</ol>
<blockquote>
<ol>
 	<li>Create a temporary <code>Node</code> with <code>x</code> and <code>y</code> coordinates given by the method inputs.
<ol start="2">
 	<li>Create a float <code>min_dist = std::numeric_limits&lt;float&gt;::max()</code> for the minum distance found in your search.</li>
 	<li>Create an <code>int</code> variable <code>closest_idx</code> to store the index of the closest</li>
 	<li>Write a loop that iterates through the vector given by calling <code>Roads()</code>.</li>
 	<li>For each reference <code>&amp;road</code> in the vector, check that the type is not a footway: <code>road.type != Model::Road::Type::Footway</code>. If the road is not a footway:
<ol>
 	<li>Loop over each node index in the <code>way</code> that the road belongs to: <code>Ways()[road.way].nodes</code>.</li>
 	<li>Update <code>closest_idx</code> and <code>min_dist</code>, if needed.</li>
</ol>
</li>
 	<li>Return the node from the <code>SNodes()</code> vector using the found index.</li>
</ol>
</li>
</ol>
</blockquote>


<strong>Have a look at the [video](https://www.bootcampai.org/courses/c-developer-nanodegree-program/lesson/16-2-code-find-the-closest-node/) below for a brief overview of this file.</strong>