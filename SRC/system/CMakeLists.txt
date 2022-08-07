add_library(${PROJECT_NAME}_system)

file(GLOB SRC_ASM *.S)
target_sources(${PROJECT_NAME}_system
    PRIVATE
    ${SRC_ASM}
)

target_include_directories(${PROJECT_NAME}_system
    PUBLIC
    "${PROJECT_BINARY_DIR}"
)

target_link_libraries(${PROJECT_NAME}_system 
    stm32lib
    threadx
)