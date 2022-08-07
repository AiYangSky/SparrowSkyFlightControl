add_library(${PROJECT_NAME}_drivers_RTT)


file(GLOB RTT_LIB_FILE ${CMAKE_CURRENT_SOURCE_DIR}/RTT/*.c)


target_sources(${PROJECT_NAME}_drivers_RTT
    PRIVATE
    ${RTT_LIB_FILE}
)

target_include_directories(${PROJECT_NAME}_drivers_RTT
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/Config
)

target_include_directories(${PROJECT_NAME}_drivers_RTT
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/RTT
)