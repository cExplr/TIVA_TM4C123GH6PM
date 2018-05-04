################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Kentec320x240x16_ssd2119_8bit.obj: ../Kentec320x240x16_ssd2119_8bit.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/home/c3xp1r/workspace_v8/Attempt_one" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35/drivers" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35" --include_path="/home/c3xp1r/ti/TivaWare_C_Series-2.1.3.156" --include_path="/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Kentec320x240x16_ssd2119_8bit.d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/home/c3xp1r/workspace_v8/Attempt_one" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35/drivers" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35" --include_path="/home/c3xp1r/ti/TivaWare_C_Series-2.1.3.156" --include_path="/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

tm4c123gh6pm_startup_ccs.obj: ../tm4c123gh6pm_startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/home/c3xp1r/workspace_v8/Attempt_one" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35/drivers" --include_path="/home/c3xp1r/ti/ek-tm4c123gxl-boost-l35" --include_path="/home/c3xp1r/ti/TivaWare_C_Series-2.1.3.156" --include_path="/home/c3xp1r/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="tm4c123gh6pm_startup_ccs.d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


