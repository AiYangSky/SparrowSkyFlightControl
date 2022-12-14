# SparrowSkyFlightControl

    SparrowSkyFlightControl is a small quadrotor UAV flight control.
    It is developed based on STM32 and Azure RTOS Threadx.

# Hardware

    Major features will be developed on top of pixhawk2.4.8, with additional hardware support added later.

# Build

## Prerequisites
 
Install the following tools:

* [CMake](https://cmake.org/download/) version 3.0 or later
* [GCC compilers for arm-none-eabi](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)
* [Ninja](https://ninja-build.org/)


## Dependencies

![dependency graph](doc/deps.png)
 
## Cloning the repo

```bash
$ git clone https://github.com/AiYangSky/SparrowSkyFlightControl.git --recursive
```

## Build 
```bash
$ cmake -B .build -DCMAKE_TOOLCHAIN_FILE=cmake/cortex_m4.cmake -GNinja 

$ cmake --build .build
```

# Progress and plans:

## 2022/8/7 v0.0.1

    The adaptation of STM32 standard library and Azure RTOS Threadx is completed on the 
    STM32F407ZE platform, and the basic test is completed.

    The link option is currently problematic, the first build in "cortex_m4.cmake" cannot
    properly import CMAKE_EXE_LINKER_FLAGS,introducing this value in the main CMakeLists 
    file will fix this, but it is not currently desired.

    The development and adaptation of peripheral driver will be completed in the near future.
    At the same time, the compatibility processing from the test core board to the flight 
    control board is completed.

## 2022/8/11 v0.0.1

    Add a parameter management module.
    The issues with the MavLink microservice should be addressed in the next few days. 
    The peripheral driver side needs to be temporarily shelved due to hardware issues.

## 2022/8/22 v0.0.1

    MavLink microservices that we want to support are basically completed. 
    Next will build the task management module of the system based on the command protocol
    of MavLink,so that the system always points to a specific command or task (maybe this 
    should be counted as a sub-module of MavLink?).
    Try not to introduce too many MavLink elements into design.

    Current MavLink microservice deprecates more of the old protocol content, 
    so it may not be very friendly to the existing ground station system.

    Existing MavLink reserved interface implementation should be adjusted during the design
     of the task management module.

