all: comp sim_word_format_poll rpt_cg

comp:
	vcs -sverilog -full64 -top uart_tb -timescale=1ns/1ps -ntb_opts uvm-1.2 -f filelist.f -l comp.log -cm cond+line+fsm


sim_all: sim_word_format_poll sim_modem_poll sim_word_format_int sim_modem_int sim_baud_rate sim_uart_regs

sim_word_format_poll:
	./simv   -cm cond+line+fsm -l word_format_poll_test.log +UVM_TESTNAME=word_format_poll_test -cm_name word_format_poll_test -cm_dir word_format_poll_test.vdb 

sim_modem_poll:
	./simv   -cm cond+line+fsm -l modem_poll_test.log +UVM_TESTNAME=modem_poll_test -cm_name modem_poll_test -cm_dir modem_poll_test.vdb 

sim_word_format_int:
	./simv   -cm cond+line+fsm -l word_format_int_test.log +UVM_TESTNAME=word_format_int_test -cm_name word_format_int_test -cm_dir word_format_int_test.vdb 

sim_modem_int:
	./simv   -cm cond+line+fsm -l modem_int_test.log +UVM_TESTNAME=modem_int_test -cm_name modem_int_test -cm_dir modem_int_test.vdb 

sim_baud_rate:
	./simv   -cm cond+line+fsm -l baud_rate_test.log +UVM_TESTNAME=baud_rate_test -cm_name baud_rate_test -cm_dir baud_rate_test.vdb 

sim_rx_errors_int:
	./simv   -cm cond+line+fsm -l rx_errors_int_test.log +UVM_TESTNAME=rx_errors_int_test -cm_name rx_errors_int_test -cm_dir rx_errors_int_test.vdb 

sim_uart_regs:
	./simv   -cm cond+line+fsm -l uart_test.log +UVM_TESTNAME=uart_test -cm_name uart_test -cm_dir uart_test.vdb 

#	./simv   -cm cond+line+fsm -l rx_errors_int_test.log +UVM_TESTNAME=rx_errors_int_test -cm_name rx_errors_int_test -cm_dir rx_errors_int_test.vdb 

rpt_cg:
	urg -dir *.vdb -report cg_report
	@echo "coverage report generated in ./cg_report"

verdi_cg:
	verdi -cov -covdir *.vdb/ &

clean:
	rm -rf *.log *.vdb *simv* *.h *.key cg_report csrc vdCovLog

