transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/capstone/shared_mem/shared_mem.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/processing_system7_vip_v1_0_16
vlib activehdl/xil_defaultlib
vlib activehdl/axi_bram_ctrl_v4_1_8
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_28

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_processing_system7_0_0/sim/shared_mem_processing_system7_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_8 -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/85f5/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_bram_ctrl_0_0/sim/shared_mem_axi_bram_ctrl_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_0/sim/bd_ae06_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_1/sim/bd_ae06_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_2/sim/bd_ae06_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_3/sim/bd_ae06_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_4/sim/bd_ae06_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_5/sim/bd_ae06_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_6/sim/bd_ae06_sarn_0.sv" \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_7/sim/bd_ae06_srn_0.sv" \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_8/sim/bd_ae06_sawn_0.sv" \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_9/sim/bd_ae06_swn_0.sv" \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_10/sim/bd_ae06_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_11/sim/bd_ae06_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/ip/ip_12/sim/bd_ae06_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/bd_0/sim/bd_ae06.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_axi_smc_0/sim/shared_mem_axi_smc_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/ip/shared_mem_rst_ps7_0_50M_0/sim/shared_mem_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/ec67/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/aed8/hdl" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/f0b6/hdl/verilog" "+incdir+../../../../shared_mem.gen/sources_1/bd/shared_mem/ipshared/66be/hdl/verilog" "+incdir+D:/xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l axi_bram_ctrl_v4_1_8 -l xlconstant_v1_1_7 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l smartconnect_v1_0 -l axi_register_slice_v2_1_28 \
"../../../../shared_mem.gen/sources_1/bd/shared_mem/sim/shared_mem.v" \

vlog -work xil_defaultlib \
"glbl.v"

