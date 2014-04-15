################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AD9467.c \
../src/AD9517.c \
../src/cf_ad9467.c \
../src/main.c \
../src/spi.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/AD9467.o \
./src/AD9517.o \
./src/cf_ad9467.o \
./src/main.o \
./src/spi.o 

C_DEPS += \
./src/AD9467.d \
./src/AD9517.d \
./src/cf_ad9467.d \
./src/main.d \
./src/spi.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v8.40.b -mno-xl-soft-mul -mxl-multiply-high -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


