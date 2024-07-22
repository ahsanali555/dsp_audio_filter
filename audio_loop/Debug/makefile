################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/c5500_4.4.1

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./aic_test_i2c.obj" \
"./dma_bypass1.obj" \
"./fir.obj" \
"./i2s_bypass1.obj" \
"./i2s_register.obj" \
"./iir.obj" \
"./main_bypass1.obj" \
"./ref_data_bypass1.obj" \
"./rtc_bypass1.obj" \
"./vector.obj" \
"../C5505.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
audio_loop.out \

EXE_OUTPUTS__QUOTED += \
"audio_loop.out" \

BIN_OUTPUTS += \
audio_loop.hex \

BIN_OUTPUTS__QUOTED += \
"audio_loop.hex" \


# All Target
all: audio_loop.out

# Tool invocations
audio_loop.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C5500 Linker'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic -z -m"audio_loop.map" --stack_size=1000 --heap_size=0x400 -i"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/lib" -i"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --reread_libs --display_error_number --warn_sections --xml_link_info="audio_loop_linkInfo.xml" --entry_point=reset_isr --rom_model --sys_stacksize=1000 -o "audio_loop.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

audio_loop.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: C5500 Hex Utility'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/hex55"  -o "audio_loop.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)$(BIN_OUTPUTS__QUOTED)
	-$(RM) "dma_bypass1.d" "fir.d" "i2s_bypass1.d" "iir.d" "main_bypass1.d" "ref_data_bypass1.d" "rtc_bypass1.d" 
	-$(RM) "aic_test_i2c.obj" "dma_bypass1.obj" "fir.obj" "i2s_bypass1.obj" "i2s_register.obj" "iir.obj" "main_bypass1.obj" "ref_data_bypass1.obj" "rtc_bypass1.obj" "vector.obj" 
	-$(RM) "aic_test_i2c.d" "i2s_register.d" "vector.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

