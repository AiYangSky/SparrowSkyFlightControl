add_library(${PROJECT_NAME}_tools)

file(GLOB DRIVERS_FILE ${CMAKE_CURRENT_SOURCE_DIR}/init/*.c)

target_sources(${PROJECT_NAME}_tools
    PRIVATE
    ${DRIVERS_FILE}
)

add_subdirectory(SEGGER_RTT)

target_include_directories(${PROJECT_NAME}_tools
    PUBLIC
    "${CMAKE_CURRENT_BINARY_DIR}"
)

target_link_libraries(${PROJECT_NAME}_tools
    RTT
)