vlib work

set UVM_HOME E:/hehaojie/modelsim16d/verilog_src/uvm-1.1d

set WORK_HOME E:/hehaojie/UVMstudy/book_test/uvm_demo1

set UVM_DPI_HOME E:/hehaojie/modelsim16d/uvm-1.1d/win64

#编译设计软件
vlog +incdir+$UVM_HOME/src -L mtiUvm -L mtiUPF $UVM_HOME/src/uvm_pkg.sv $WORK_HOME/*.sv

#启动仿真时关闭优化
vsim -c -sv_lib $UVM_DPI_HOME/uvm_dpi work.top_tb -voptargs=+acc

#添加顶层所有端口
#add wave -radix binary /*

view wave *
#运行仿真
run -all