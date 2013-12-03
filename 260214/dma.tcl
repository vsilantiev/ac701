
################################################################
# This is a generated script based on design: dma
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2013.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dma_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD em.avnet.com:zynq:zed:d [current_project]


# CHANGE DESIGN NAME HERE
set design_name dma

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
if { ${design_name} ne "" && ${cur_design} eq ${design_name} } {
   # Checks if design is empty or not
   set list_cells [get_bd_cells -quiet]

   if { $list_cells ne "" } {
      set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
      set nRet 1
   } else {
      puts "INFO: Constructing design in IPI design <$design_name>..."
   }
} else {

   if { [get_files -quiet ${design_name}.bd] eq "" } {
      puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

      create_bd_design $design_name

      puts "INFO: Making design <$design_name> as current_bd_design."
      current_bd_design $design_name

   } else {
      set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
      set nRet 3
   }

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set JA_1 [ create_bd_port -dir O JA_1 ]
  set LD_0 [ create_bd_port -dir O LD_0 ]
  set LD_1 [ create_bd_port -dir O LD_1 ]
  set LD_2 [ create_bd_port -dir O LD_2 ]
  set LD_4 [ create_bd_port -dir O LD_4 ]
  set LD_5 [ create_bd_port -dir O LD_5 ]
  set LD_6 [ create_bd_port -dir O LD_6 ]
  set LD_7 [ create_bd_port -dir O LD_7 ]

  # Create instance: acp_0, and set properties
  set acp_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:acp:1.0 acp_0 ]
  set_property -dict [ list CONFIG.C_M00_AXI_START_DATA_VALUE {0x00000000} CONFIG.C_M00_AXI_TRANSACTIONS_NUM {1024}  ] $acp_0

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_0 ]
  set_property -dict [ list CONFIG.PROTOCOL {AXI4LITE}  ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 axi_bram_ctrl_0_bram ]
  set_property -dict [ list CONFIG.Memory_Type {True_Dual_Port_RAM}  ] $axi_bram_ctrl_0_bram

  # Create instance: axi_cdma_0, and set properties
  set axi_cdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_0 ]
  set_property -dict [ list CONFIG.C_INCLUDE_SG {0} CONFIG.C_M_AXI_MAX_BURST_LEN {256}  ] $axi_cdma_0

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {32} CONFIG.NUM_MI {1} CONFIG.NUM_SI {2} CONFIG.PROTOCOL {AXI4LITE}  ] $axi_crossbar_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list CONFIG.NUM_MI {2} CONFIG.NUM_SI {2}  ] $axi_mem_intercon

  # Create instance: init_cdma_0, and set properties
  set init_cdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:init_cdma:1.0 init_cdma_0 ]
  set_property -dict [ list CONFIG.C_M00_AXI_DST_ADDR {0x10000000} CONFIG.C_M00_AXI_START_DATA_VALUE {0x00001000} CONFIG.C_M00_AXI_TARGET_SLAVE_BASE_ADDR {0x44A00000} CONFIG.C_M00_AXI_TRANSACTIONS_NUM {11}  ] $init_cdma_0

  # Create instance: proc_sys_reset, and set properties
  set proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.3 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.preset {ZedBoard*}  ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list CONFIG.NUM_MI {2} CONFIG.NUM_SI {2}  ] $processing_system7_0_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net acp_0_m00_axi [get_bd_intf_pins acp_0/M00_AXI] [get_bd_intf_pins axi_mem_intercon/S01_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_bram_porta [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_bram_portb [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_cdma_0_m_axi [get_bd_intf_pins axi_cdma_0/M_AXI] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_m00_axi [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_m00_axi [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_mem_intercon_m01_axi [get_bd_intf_pins axi_crossbar_0/S00_AXI] [get_bd_intf_pins axi_mem_intercon/M01_AXI]
  connect_bd_intf_net -intf_net init_cdma_0_m00_axi [get_bd_intf_pins init_cdma_0/M00_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m00_axi [get_bd_intf_pins axi_cdma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m01_axi [get_bd_intf_pins axi_crossbar_0/S01_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_m_axi_gp0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]

  # Create port connections
  connect_bd_net -net acp_0_m00_axi_error [get_bd_ports LD_7] [get_bd_pins acp_0/m00_axi_error]
  connect_bd_net -net acp_0_m00_axi_half [get_bd_ports LD_6] [get_bd_pins acp_0/m00_axi_half] [get_bd_pins init_cdma_0/m00_axi_init_axi_txn]
  connect_bd_net -net acp_0_m00_axi_init [get_bd_ports LD_4] [get_bd_pins acp_0/m00_axi_init] [get_bd_pins acp_0/m00_axi_init_axi_txn]
  connect_bd_net -net acp_0_m00_axi_txn_done [get_bd_ports LD_5] [get_bd_pins acp_0/m00_axi_txn_done]
  connect_bd_net -net axi_cdma_0_cdma_introut [get_bd_ports JA_1] [get_bd_ports LD_0] [get_bd_pins axi_cdma_0/cdma_introut]
  connect_bd_net -net init_cdma_0_m00_axi_error [get_bd_ports LD_2] [get_bd_pins init_cdma_0/m00_axi_error]
  connect_bd_net -net init_cdma_0_m00_axi_txn_done [get_bd_ports LD_1] [get_bd_pins init_cdma_0/m00_axi_txn_done]
  connect_bd_net -net proc_sys_reset_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins proc_sys_reset/interconnect_aresetn] [get_bd_pins processing_system7_0_axi_periph/ARESETN]
  connect_bd_net -net proc_sys_reset_peripheral_aresetn [get_bd_pins axi_cdma_0/s_axi_lite_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins proc_sys_reset/peripheral_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net processing_system7_0_fclk_clk0 [get_bd_pins acp_0/m00_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_cdma_0/m_axi_aclk] [get_bd_pins axi_cdma_0/s_axi_lite_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins init_cdma_0/m00_axi_aclk] [get_bd_pins proc_sys_reset/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins processing_system7_0_axi_periph/S01_ACLK]
  connect_bd_net -net processing_system7_0_fclk_reset0_n [get_bd_pins acp_0/m00_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins init_cdma_0/m00_axi_aresetn] [get_bd_pins proc_sys_reset/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S01_ARESETN]

  # Create address segments
  create_bd_addr_seg -range 0x1000 -offset 0x40000000 [get_bd_addr_spaces acp_0/M00_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x1000 -offset 0x40000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x1000 -offset 0x40000000 [get_bd_addr_spaces init_cdma_0/M00_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x44A00000 [get_bd_addr_spaces init_cdma_0/M00_AXI] [get_bd_addr_segs axi_cdma_0/S_AXI_LITE/Reg] SEG_axi_cdma_0_Reg
  create_bd_addr_seg -range 0x1000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x44A00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_cdma_0/S_AXI_LITE/Reg] SEG_axi_cdma_0_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


