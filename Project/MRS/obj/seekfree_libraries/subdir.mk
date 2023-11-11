################################################################################
# MRS Version: 1.9.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/board.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/clock_config.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/common.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/misc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_adc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_camera.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_flash.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_gpio.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_nvic.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_pit.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_pwm.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_spi.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_systick.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_timer.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_uart.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_usb_cdc.c 

S_UPPER_SRCS += \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_irq.S 

OBJS += \
./seekfree_libraries/board.o \
./seekfree_libraries/clock_config.o \
./seekfree_libraries/common.o \
./seekfree_libraries/misc.o \
./seekfree_libraries/zf_adc.o \
./seekfree_libraries/zf_camera.o \
./seekfree_libraries/zf_flash.o \
./seekfree_libraries/zf_gpio.o \
./seekfree_libraries/zf_irq.o \
./seekfree_libraries/zf_nvic.o \
./seekfree_libraries/zf_pit.o \
./seekfree_libraries/zf_pwm.o \
./seekfree_libraries/zf_spi.o \
./seekfree_libraries/zf_systick.o \
./seekfree_libraries/zf_timer.o \
./seekfree_libraries/zf_uart.o \
./seekfree_libraries/zf_usb_cdc.o 

S_UPPER_DEPS += \
./seekfree_libraries/zf_irq.d 

C_DEPS += \
./seekfree_libraries/board.d \
./seekfree_libraries/clock_config.d \
./seekfree_libraries/common.d \
./seekfree_libraries/misc.d \
./seekfree_libraries/zf_adc.d \
./seekfree_libraries/zf_camera.d \
./seekfree_libraries/zf_flash.d \
./seekfree_libraries/zf_gpio.d \
./seekfree_libraries/zf_nvic.d \
./seekfree_libraries/zf_pit.d \
./seekfree_libraries/zf_pwm.d \
./seekfree_libraries/zf_spi.d \
./seekfree_libraries/zf_systick.d \
./seekfree_libraries/zf_timer.d \
./seekfree_libraries/zf_uart.d \
./seekfree_libraries/zf_usb_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
seekfree_libraries/board.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/board.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/clock_config.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/clock_config.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/common.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/common.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/misc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/misc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_adc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_camera.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_camera.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_flash.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_gpio.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_irq.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_irq.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -x assembler -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Startup" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_nvic.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_nvic.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_pit.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_pit.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_pwm.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_pwm.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_spi.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_systick.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_systick.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_timer.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_timer.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_uart.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_uart.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
seekfree_libraries/zf_usb_cdc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/seekfree_libraries/zf_usb_cdc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

