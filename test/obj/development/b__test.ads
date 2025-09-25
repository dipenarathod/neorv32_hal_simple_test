pragma Warnings (Off);
pragma Ada_95;
pragma Restrictions (No_Exception_Propagation);
with System;
package ada_main is


   GNAT_Version : constant String :=
                    "GNAT Version: 14.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_test" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure main;
   pragma Export (C, main, "main");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  ada.exceptions%b
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  system.img_char%s
   --  system.img_char%b
   --  system.machine_code%s
   --  system.parameters%s
   --  system.storage_elements%s
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.text_io%s
   --  system.text_io%b
   --  system.unsigned_types%s
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.img_int%s
   --  neorv32%s
   --  neorv32.uart0%s
   --  riscv%s
   --  riscv.csr_generic%s
   --  riscv.csr_generic%b
   --  riscv.types%s
   --  riscv.csr%s
   --  interrupts%s
   --  interrupts%b
   --  runtime_support%s
   --  runtime_support%b
   --  sysinfo%s
   --  uart0%s
   --  uart0%b
   --  test%b
   --  END ELABORATION ORDER

end ada_main;
