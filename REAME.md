# Scope

Repository to experiment with ros tutorials.

# Requirements

You must be running a fresh install of Ubuntu 16.04, or using a Udacity virtual machine from the nanodegree course.

# Setup

1. Verify python is version 3.7 with command `python --version`
2. If python is not version 3.7, download and install Miniconda3-py37_23.1.0-1-Linux-x86_64.sh from [here](https://repo.anaconda.com/miniconda/)
3. Clone repo
    ```bash
    cd /home/workspace (for udacity VM) or cd ~ (for any other machine)
    git clone http://github.com/lotockib/ros-tutorials.git
    ```
4. Run setup script
    ```bash
    cd /home/workspace (for udacity VM) or cd ~ (for any other machine)
    cd ros-tutorials
    ./setup.sh
    ```

# Run

1. In a terminal, run roscore
    ```bash
    roscore
    ```

2. In a new terminal, run talker
    ```bash
    roscd beginner_tutorials
    cd ../../
    source devel/setup.bash
    rosrun beginner_tutorials talker
    ```

3. In a new terminal, run listener
    ```bash
    roscd beginner_tutorials
    cd ../../
    source devel/setup.bash
    rosrun beginner_tutorials listener
    ```    