# Name of the target
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR cortex-m4)

set(CHIP_TYPE "stm32f4")
set(CHIP_LIB_TYPE "std")


set(MCPU_FLAGS "-mthumb -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard")
set(VFP_FLAGS "-Wall -fdata-sections -ffunction-sections")
set(SPEC_FLAGS "--specs=nosys.specs")

file(GLOB LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/SRC/system/*.ld)
#message(${LINKER_SCRIPT})
set(CMAKE_EXE_LINKER_FLAGS "--specs=nano.specs -T${LINKER_SCRIPT} -Wl,-Map=${PROJECT_BINARY_DIR}/${PROJECT_NAME}.map,--cref -Wl,--gc-sections")

add_definitions(
    -DSTM32F40_41xxx
    -DUSE_STDPERIPH_DRIVER
)

include(${CMAKE_CURRENT_LIST_DIR}/threadx.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/arm-none-eabi.cmake)