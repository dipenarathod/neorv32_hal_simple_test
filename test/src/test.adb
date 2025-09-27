-- Simple test program for NEORV32
with Runtime_Support;
with neorv32.UART0;
with neorv32;
with Uart0;

procedure Test is


begin
   Interrupts.Init;
   Uart0.Init (19200);
   -- Your test code here
   loop
      null;
   end loop;
end Test;
