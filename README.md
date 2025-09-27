# neorv32_hal_simple_test
Simple test to show a basic program using the neorv32_hal (Ada)

bare minimum code for using the neorv32_hal
Same directory level as the demos folder
(I suggest going into the neorv32_hal folder and creating a project using alr init)

Files of interest:
- src/runtime_support.adb
- src/runtime_support.ads
- alire.toml
- test.gpr

To create the .bin file:
riscv64-elf-objcopy -O binary bin/test bin/test.bin

Generic command:
riscv64-elf-objcopy -O binary bin/(executable name) bin/(bin file name).bin

Creating an application VHDL file:
image_gen -app_vhd bin/test.bin bin/neorv32_application_image.vhd

Generic command:
image_gen -app_vhd bin/(bin file name).bin bin/(vhdl file name).vhd
