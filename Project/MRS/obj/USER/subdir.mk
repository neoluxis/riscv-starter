################################################################################
# MRS Version: 1.9.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/USER/isr.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/USER/main.c 

OBJS += \
./USER/isr.o \
./USER/main.o 

C_DEPS += \
./USER/isr.d \
./USER/main.d 


# Each subdirectory must supply rules for building sources it contributes
USER/isr.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/USER/isr.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
USER/main.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/USER/main.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

