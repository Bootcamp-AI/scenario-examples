
## 2. Initialize ROS env.

```plain
cd ~
```{{exec}}

### 1. Create src directory.
```plain
mkdir -p ~/tutorial_catkin/src
```{{exec}}

### 2. Go to tutorial_catkin
```plain
cd tutorial_catkin
```{{exec}}

### 3. Active ROS workspace
```plain
catkin_make
```{{exec}}

```plain
cd ~
```{{exec}}

### 4. Go to src
```plain
cd tutorial_catkin/src
```{{exec}}

### 5. Creating a ROS Package
```plain
catkin_create_pkg ros_cpp_py_basics roscpp rospy std_msgs
```{{exec}}

Now that you have a workspace, create a lauch folder
```plain
mkdir launch
```{{exec}}

```plain
cd launch
```{{exec}}

```plain
nano one.launch
```{{exec}}

Insert this code
```plain
<?xml version="1.0"?>
<launch>
  <arg name="model" default="burger" doc="model type [burger, waffle, waffle_pi]"/>
  <arg name="robot_name"  default="robot_$(arg model)"/>
  <arg name="robot_posture" default="-x 0 -y 0 -Y 0"/>

  <include file="$(find gazebo_ros)/launch/empty_world.launch"> <!-- Launch Gazebo with an empty world -->
    <!--arg name="world_name" value="$(find turtlebot3_gazebo)/worlds/empty.world"/-->
    <arg name="paused" value="true"/>
    <arg name="use_sim_time" value="true"/>
    <arg name="gui" value="true"/>
    <arg name="headless" value="false"/>
    <arg name="debug" value="false"/>
  </include>

  <!-- Send the robot XML to param server -->
  <param name="robot_description" command="$(find xacro)/xacro --inorder $(find turtlebot3_description)/urdf/turtlebot3_$(arg model).urdf.xacro" />

  <!-- Push robot_description to factory and spawn robot in Gazebo -->
  <node name="spawn_urdf" pkg="gazebo_ros" type="spawn_model" args="-urdf -model $(arg robot_name) $(arg robot_posture) -param robot_description" />

  <!-- Convert joint states to TF transforms for RViz, position of the robot, etc -->
  <node pkg="robot_state_publisher" type="robot_state_publisher" name="robot_state_publisher" output="screen">
    <param name="publish_frequency" type="double" value="50.0" />
    <param name="tf_prefix" value="" />
  </node>

</launch>
```

Save changes.

Finally excute.
```plain
roslauch ros_cpp_py_basics one.launch
```{{exec}}