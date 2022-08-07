cmake_minimum_required(VERSION 3.0.0)

project(SparrowSkyFlightControl
    VERSION 1.0.0
    LANGUAGES C ASM
)

add_subdirectory(threadx)
add_subdirectory(STMLIB)
add_subdirectory(SRC/system)

add_executable(${PROJECT_NAME}.elf
    SRC/system/${PROJECT_NAME}.c
)

target_link_libraries(${PROJECT_NAME}.elf -lm
    threadx
    stm32lib
    ${PROJECT_NAME}_system
)

target_include_directories(${PROJECT_NAME}.elf PUBLIC
    "${PROJECT_BINARY_DIR}"
)
