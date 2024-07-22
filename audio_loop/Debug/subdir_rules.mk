################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
aic_test_i2c.obj: ../aic_test_i2c.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="aic_test_i2c.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

dma_bypass1.obj: ../dma_bypass1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="dma_bypass1.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fir.obj: ../fir.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="fir.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

i2s_bypass1.obj: ../i2s_bypass1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="i2s_bypass1.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

i2s_register.obj: ../i2s_register.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="i2s_register.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

iir.obj: ../iir.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="iir.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main_bypass1.obj: ../main_bypass1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="main_bypass1.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ref_data_bypass1.obj: ../ref_data_bypass1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="ref_data_bypass1.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

rtc_bypass1.obj: ../rtc_bypass1.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="rtc_bypass1.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

vector.obj: ../vector.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=huge -O1 -g --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --define=c5505 --define="_DEBUG" --define="C55X" --display_error_number --diag_warning=225 --ptrdiff_size=32 --algebraic --no_mac_expand --asm_source=algebraic --preproc_with_compile --preproc_dependency="vector.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


