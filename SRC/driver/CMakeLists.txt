add_library(${PROJECT_NAME}_drivers)

file(GLOB DRIVERS_FILE ${CMAKE_CURRENT_SOURCE_DIR}/init/*.c)
target_sources(${PROJECT_NAME}_drivers
    PRIVATE
    ${DRIVERS_FILE}
)

target_include_directories(${PROJECT_NAME}_drivers
    PUBLIC
    "${CMAKE_CURRENT_BINARY_DIR}"
)

target_link_libraries(${PROJECT_NAME}_drivers 
    stm32lib
    threadx
    SparrowSkyFlightControl_tools
)