add_library(${PROJECT_NAME}_drivers)

target_sources(
    PRIVATE

)

target_include_directories(
    PUBLIC

)

target_link_libraries(${PROJECT_NAME}_drivers 
    stm32lib
    threadx
)