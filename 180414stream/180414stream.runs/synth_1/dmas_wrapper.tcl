# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property ip_repo_paths {
  /home/vladimir/Z/zedboard/180414stream/newIPCore/def_stream_1.0
  /home/vladimir/Z/zedboard/180414stream/newIPCore
} [current_fileset]

add_files /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/dmas.bd
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_processing_system7_0_0/dmas_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_dma_0_0/dmas_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_dma_0_0/dmas_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_dma_0_0/dmas_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_proc_sys_reset_2/dmas_proc_sys_reset_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_proc_sys_reset_2/dmas_proc_sys_reset_2.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_proc_sys_reset_2/dmas_proc_sys_reset_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_xbar_9/dmas_xbar_9_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_bram_ctrl_0_0/dmas_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_bram_ctrl_0_bram_0/dmas_axi_bram_ctrl_0_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_cdma_0_0/dmas_axi_cdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axi_cdma_0_0/dmas_axi_cdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_xbar_14/dmas_xbar_14_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_xbar_15/dmas_xbar_15_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_xbar_16/dmas_xbar_16_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_xbar_17/dmas_xbar_17_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axis_data_fifo_0_1/dmas_axis_data_fifo_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_axis_data_fifo_0_1/dmas_axis_data_fifo_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1176/dmas_auto_ds_1176_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1176/dmas_auto_ds_1176_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1177/dmas_auto_us_1177_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1177/dmas_auto_us_1177_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1178/dmas_auto_ds_1178_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1178/dmas_auto_ds_1178_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1539/dmas_auto_pc_1539_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1540/dmas_auto_pc_1540_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1541/dmas_auto_pc_1541_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1179/dmas_auto_ds_1179_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1179/dmas_auto_ds_1179_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1542/dmas_auto_pc_1542_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1543/dmas_auto_pc_1543_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1180/dmas_auto_us_1180_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1180/dmas_auto_us_1180_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1181/dmas_auto_ds_1181_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1181/dmas_auto_ds_1181_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1182/dmas_auto_us_1182_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1182/dmas_auto_us_1182_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_pc_1544/dmas_auto_pc_1544_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1183/dmas_auto_us_1183_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1183/dmas_auto_us_1183_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1184/dmas_auto_ds_1184_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_ds_1184/dmas_auto_ds_1184_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1185/dmas_auto_us_1185_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/ip/dmas_auto_us_1185/dmas_auto_us_1185_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/dmas_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/bd/dmas/dmas.bd]

read_verilog /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/sources_1/imports/hdl/dmas_wrapper.v
read_xdc /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/constrs_1/new/dmas_wrapper.xdc
set_property used_in_implementation false [get_files /home/vladimir/Z/zedboard/180414stream/180414stream.srcs/constrs_1/new/dmas_wrapper.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/vladimir/Z/zedboard/180414stream/180414stream.data/wt [current_project]
set_property parent.project_dir /home/vladimir/Z/zedboard/180414stream [current_project]
synth_design -top dmas_wrapper -part xc7z020clg484-1
write_checkpoint dmas_wrapper.dcp
report_utilization -file dmas_wrapper_utilization_synth.rpt -pb dmas_wrapper_utilization_synth.pb
