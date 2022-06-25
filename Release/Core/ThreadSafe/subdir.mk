################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/ThreadSafe/newlib_lock_glue.c 

OBJS += \
./Core/ThreadSafe/newlib_lock_glue.o 

C_DEPS += \
./Core/ThreadSafe/newlib_lock_glue.d 


# Each subdirectory must supply rules for building sources it contributes
Core/ThreadSafe/%.o Core/ThreadSafe/%.su: ../Core/ThreadSafe/%.c Core/ThreadSafe/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G031xx -DSTM32_THREAD_SAFE_STRATEGY=2 -c -I../Core/Inc -IC:/Users/TRO/STM32Cube/Repository/STM32Cube_FW_G0_V1.5.1/Drivers/STM32G0xx_HAL_Driver/Inc -IC:/Users/TRO/STM32Cube/Repository/STM32Cube_FW_G0_V1.5.1/Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -IC:/Users/TRO/STM32Cube/Repository/STM32Cube_FW_G0_V1.5.1/Drivers/CMSIS/Device/ST/STM32G0xx/Include -IC:/Users/TRO/STM32Cube/Repository/STM32Cube_FW_G0_V1.5.1/Drivers/CMSIS/Include -I../Core/ThreadSafe -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-ThreadSafe

clean-Core-2f-ThreadSafe:
	-$(RM) ./Core/ThreadSafe/newlib_lock_glue.d ./Core/ThreadSafe/newlib_lock_glue.o ./Core/ThreadSafe/newlib_lock_glue.su

.PHONY: clean-Core-2f-ThreadSafe

