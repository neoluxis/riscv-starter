################################################################################
# MRS Version: 1.9.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/ADC_measure.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/ips_show.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/key_make.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/motor_PWM.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/timer_encoder.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/uart_showdate.c 

OBJS += \
./CODE/ADC_measure.o \
./CODE/ips_show.o \
./CODE/key_make.o \
./CODE/motor_PWM.o \
./CODE/timer_encoder.o \
./CODE/uart_showdate.o 

C_DEPS += \
./CODE/ADC_measure.d \
./CODE/ips_show.d \
./CODE/key_make.d \
./CODE/motor_PWM.d \
./CODE/timer_encoder.d \
./CODE/uart_showdate.d 


# Each subdirectory must supply rules for building sources it contributes
CODE/ADC_measure.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/ADC_measure.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
CODE/ips_show.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/ips_show.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
CODE/key_make.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/key_make.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
CODE/motor_PWM.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/motor_PWM.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
CODE/timer_encoder.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/timer_encoder.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
CODE/uart_showdate.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Project/CODE/uart_showdate.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

