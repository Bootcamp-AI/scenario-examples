
## 2. Initialize ROS env.

```plain
cd ~
```{{exec}}

### 1. Create src directory.
```plain
mkdir -p ~/bootcampai_catkin/src
```{{exec}}

### 2. Go to bootcampai_catkin
```plain
cd bootcampai_catkin
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
cd bootcampai_catkin/src
```{{exec}}

### 5. Now that you have a workspace, clone or download this repo into the src directory of your workspace:
```plain
git clone https://github.com/Bootcamp-AI/RoboND-Kinematics.git
```{{exec}}

Now from a terminal window:
```plain
cd ..
```{{exec}}

```plain
rosdep install --from-paths src --ignore-src --rosdistro=noetic -y
```{{exec}}

```plain
cd ~/bootcampai_catkin/src/RoboND-Kinematics-Project/kuka_arm/scripts
```{{exec}}

```plain
sudo chmod +x target_spawn.py
```{{exec}}

```plain
sudo chmod +x IK_server.py
```{{exec}}

```plain
sudo chmod +x safe_spawner.sh
```{{exec}}

### 6.Build the project:
```plain
cd ~/bootcampai_catkin
```{{exec}}

```plain
catkin_make
```{{exec}}




