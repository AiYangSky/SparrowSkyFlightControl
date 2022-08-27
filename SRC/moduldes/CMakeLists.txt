add_library(${PROJECT_NAME}_moduldes)

file(GLOB DRIVERS_FILE ${CMAKE_CURRENT_SOURCE_DIR}/init/*c)

target_sources(${PROJECT_NAME}_moduldes
    PRIVATE
    ${DRIVERS_FILE}
)

add_subdirectory(Parameters/src)
add_subdirectory(mavlink/src)

target_include_directories(${PROJECT_NAME}_moduldes
    PUBLIC
    "${CMAKE_CURRENT_BINARY_DIR}"
)

target_link_libraries(${PROJECT_NAME}_moduldes 
    stm32lib
    threadx
    parameters
    mavlink_microservices
)