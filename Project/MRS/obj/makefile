################################################################################
# MRS Version: 1.9.0
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include wch_Libraries/Startup/subdir.mk
-include wch_Libraries/Peripheral/subdir.mk
-include wch_Libraries/Core/subdir.mk
-include seekfree_peripheral/subdir.mk
-include seekfree_libraries/subdir.mk
-include USER/subdir.mk
-include CODE/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
MRS.hex \

SECONDARY_LIST += \
MRS.lst \

SECONDARY_SIZE += \
MRS.siz \


# All Target
all: MRS.elf secondary-outputs

# Tool invocations
MRS.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "E:\proj\riscv\Seekfree_CH32V103R8T6_Opensource_Library\Libraries\wch_Libraries\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"../" -Wl,-Map,"MRS.map" --specs=nano.specs --specs=nosys.specs -o "MRS.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
MRS.hex: MRS.elf
	@	riscv-none-embed-objcopy -O ihex "MRS.elf"  "MRS.hex"
	@	@
MRS.lst: MRS.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "MRS.elf" > "MRS.lst"
	@	@
MRS.siz: MRS.elf
	@	riscv-none-embed-size --format=berkeley "MRS.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) MRS.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
