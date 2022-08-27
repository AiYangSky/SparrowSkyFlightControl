add_library(RTT)

file(GLOB RTT_LIB_FILE ${CMAKE_CURRENT_SOURCE_DIR}/RTT/*.c)

target_sources(RTT
    PRIVATE
    ${RTT_LIB_FILE}
)

target_include_directories(RTT
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/Config
)

target_include_directories(RTT
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/RTT
)