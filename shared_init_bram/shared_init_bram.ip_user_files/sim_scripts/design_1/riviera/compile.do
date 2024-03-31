transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/capstone/shared_init_bram/shared_init_bram.cache/compile_simlib/riviera}
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_14
vlib riviera/processing_system7_vip_v1_0_16
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_8
vlib riviera/xlconstant_v1_1_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_28

vlog -work xilinx_vip  -incr "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_8 -93  -incr \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/85f5/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  -incr \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_28  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_init_bram.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

