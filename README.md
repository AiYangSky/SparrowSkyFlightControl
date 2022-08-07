# SparrowSkyFlightControl

    SparrowSkyFlightControl is a small quadrotor UAV flight control. It is developed based on STM32 and Azure RTOS Threadx.

# Hardware

    Major features will be developed on top of pixhawk2.4.8, with additional hardware support added later.

# Build

## Prerequisites
 
Install the following tools:

* [CMake](https://cmake.org/download/) version 3.0 or later
* [GCC compilers for arm-none-eabi](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)
* [Ninja](https://ninja-build.org/)

## Cloning the repo

```bash
$ git clone https://github.com/AiYangSky/STMLIB.git --recursive
```

## Build 
```bash
$ cmake -B .build -DCMAKE_TOOLCHAIN_FILE=cmake/cortex_m4.cmake -GNinja .

$ cmake --build .build
```

# Progress and plans:

## 2022/8/7 v0.0.1

    The adaptation of STM32 standard library and Azure RTOS Threadx is completed on the STM32F407ZE platform, and the basic test is completed.

    The link option is currently problematic, the first build in "cortex_m4.cmake" cannot properly import CMAKE_EXE_LINKER_FLAGS, introducing this value in the main CMakeLists file will fix this, but it is not currently desired.

    The development and adaptation of peripheral driver will be completed in the near future.
    At the same time, the compatibility processing from the test core board to the flight control board is completed.
