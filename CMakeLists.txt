cmake_minimum_required(VERSION 3.0.0)

project(SparrowSkyFlightControl
    VERSION 1.0.0
    LANGUAGES C ASM
)

add_subdirectory(threadx)
add_subdirectory(STMLIB)
add_subdirectory(SRC/system)
add_subdirectory(SRC/driver)
add_subdirectory(SRC/moduldes)

add_executable(${PROJECT_NAME}.elf
    SRC/system/${PROJECT_NAME}.c
)

target_link_libraries(${PROJECT_NAME}.elf -lm
    threadx
    stm32lib
    ${PROJECT_NAME}_system
    ${PROJECT_NAME}_drivers
    ${PROJECT_NAME}_moduldes
)

target_include_directories(${PROJECT_NAME}.elf PUBLIC
    "${PROJECT_BINARY_DIR}"
)

set(CMAKE_BUILD_TYPE "Debug")

set(ELF_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf)
set(HEX_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.hex)
set(BIN_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.bin)

add_custom_command(TARGET "${PROJECT_NAME}.elf" POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -Obinary ${ELF_FILE} ${BIN_FILE}
    COMMAND ${CMAKE_OBJCOPY} -Oihex  ${ELF_FILE} ${HEX_FILE}
)