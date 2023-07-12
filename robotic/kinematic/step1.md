
## Install ROS.

### 1. Setup your sources.list

```plain
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```{{exec}}

### 2. Install curl.

```plain
sudo apt install curl
```{{exec}}

```plain
y
```{{exec}}

### 3. Set up your keys

```plain
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```{{exec}}

```plain
sudo apt update
```{{exec}}

### 4. Initialize ROS noetic
```plain
sudo apt install ros-noetic-desktop-full
```{{exec}}

```plain
Y
```{{exec}}

### 5. Environment setup

```plain
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
```{{exec}}

```plain
source ~/.bashrc
```{{exec}}
