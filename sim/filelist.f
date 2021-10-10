../rtl/uart/uart_16550.sv
../rtl/uart/uart_register_file.sv
../rtl/uart/uart_rx.sv
../rtl/uart/uart_rx_fifo.sv
../rtl/uart/uart_tx.sv
../rtl/uart/uart_tx_fifo.sv
../agents/apb_agent/apb_if.sv
+incdir+../agents/apb_agent ../agents/apb_agent/apb_agent_pkg.sv
../agents/uart_agent/serial_if.sv
+incdir+../agents/uart_agent ../agents/uart_agent/uart_agent_pkg.sv
../agents/modem_agent/modem_if.sv
+incdir+../agents/modem_agent ../agents/modem_agent/modem_agent_pkg.sv
../uvm_tb/register_model/uart_reg_pkg.sv
+incdir+../uvm_tb/env ../uvm_tb/env/uart_env_pkg.sv
+incdir+../uvm_tb/sequences ../uvm_tb/sequences/host_if_seq_pkg.sv
+incdir+../uvm_tb/sequences ../uvm_tb/sequences/uart_seq_pkg.sv
+incdir+../uvm_tb/virtual_sequences ../uvm_tb/virtual_sequences/uart_vseq_pkg.sv
+incdir+../uvm_tb/tests ../uvm_tb/tests/uart_test_pkg.sv
../uvm_tb/tb/interrupt_if.sv
../protocol_monitor/apb_monitor.sv
../uvm_tb/tb/uart_tb.sv
