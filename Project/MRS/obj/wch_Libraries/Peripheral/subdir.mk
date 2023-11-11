################################################################################
# MRS Version: 1.9.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_adc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_bkp.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_crc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_dbgmcu.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_dma.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_exti.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_flash.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_gpio.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_i2c.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_iwdg.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_misc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_pwr.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_rcc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_rtc.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_spi.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_tim.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usart.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usb.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usb_host.c \
E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_wwdg.c 

OBJS += \
./wch_Libraries/Peripheral/ch32v10x_adc.o \
./wch_Libraries/Peripheral/ch32v10x_bkp.o \
./wch_Libraries/Peripheral/ch32v10x_crc.o \
./wch_Libraries/Peripheral/ch32v10x_dbgmcu.o \
./wch_Libraries/Peripheral/ch32v10x_dma.o \
./wch_Libraries/Peripheral/ch32v10x_exti.o \
./wch_Libraries/Peripheral/ch32v10x_flash.o \
./wch_Libraries/Peripheral/ch32v10x_gpio.o \
./wch_Libraries/Peripheral/ch32v10x_i2c.o \
./wch_Libraries/Peripheral/ch32v10x_iwdg.o \
./wch_Libraries/Peripheral/ch32v10x_misc.o \
./wch_Libraries/Peripheral/ch32v10x_pwr.o \
./wch_Libraries/Peripheral/ch32v10x_rcc.o \
./wch_Libraries/Peripheral/ch32v10x_rtc.o \
./wch_Libraries/Peripheral/ch32v10x_spi.o \
./wch_Libraries/Peripheral/ch32v10x_tim.o \
./wch_Libraries/Peripheral/ch32v10x_usart.o \
./wch_Libraries/Peripheral/ch32v10x_usb.o \
./wch_Libraries/Peripheral/ch32v10x_usb_host.o \
./wch_Libraries/Peripheral/ch32v10x_wwdg.o 

C_DEPS += \
./wch_Libraries/Peripheral/ch32v10x_adc.d \
./wch_Libraries/Peripheral/ch32v10x_bkp.d \
./wch_Libraries/Peripheral/ch32v10x_crc.d \
./wch_Libraries/Peripheral/ch32v10x_dbgmcu.d \
./wch_Libraries/Peripheral/ch32v10x_dma.d \
./wch_Libraries/Peripheral/ch32v10x_exti.d \
./wch_Libraries/Peripheral/ch32v10x_flash.d \
./wch_Libraries/Peripheral/ch32v10x_gpio.d \
./wch_Libraries/Peripheral/ch32v10x_i2c.d \
./wch_Libraries/Peripheral/ch32v10x_iwdg.d \
./wch_Libraries/Peripheral/ch32v10x_misc.d \
./wch_Libraries/Peripheral/ch32v10x_pwr.d \
./wch_Libraries/Peripheral/ch32v10x_rcc.d \
./wch_Libraries/Peripheral/ch32v10x_rtc.d \
./wch_Libraries/Peripheral/ch32v10x_spi.d \
./wch_Libraries/Peripheral/ch32v10x_tim.d \
./wch_Libraries/Peripheral/ch32v10x_usart.d \
./wch_Libraries/Peripheral/ch32v10x_usb.d \
./wch_Libraries/Peripheral/ch32v10x_usb_host.d \
./wch_Libraries/Peripheral/ch32v10x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
wch_Libraries/Peripheral/ch32v10x_adc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_bkp.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_bkp.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_crc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_crc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_dbgmcu.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_dbgmcu.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_dma.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_dma.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_exti.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_exti.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_flash.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_flash.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_gpio.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_i2c.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_i2c.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_iwdg.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_iwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_misc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_misc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_pwr.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_rcc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_rcc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_rtc.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_rtc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_spi.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_spi.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_tim.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_tim.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_usart.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usart.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_usb.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usb.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_usb_host.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_usb_host.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
wch_Libraries/Peripheral/ch32v10x_wwdg.o: E:/proj/riscv/Seekfree_CH32V103R8T6_Opensource_Library/Libraries/wch_Libraries/Peripheral/ch32v10x_wwdg.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\CODE" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Project\USER" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\doc" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_libraries" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\seekfree_peripheral" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Core" -I"E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Peripheral" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

