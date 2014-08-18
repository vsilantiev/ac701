
 add_fsm_encoding \
       {wr_chnl.GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs} \
       { }  \
       {{000 000001} {011 000010} {100 000100} {010 001000} {001 010000} }

 add_fsm_encoding \
       {rd_chnl.rlast_sm_cs} \
       { }  \
       {{000 000001} {100 000010} {001 000100} {010 001000} {011 010000} }

 add_fsm_encoding \
       {axi_cdma_simple_cntlr.sig_sm_state} \
       { }  \
       {{000 00000001} {001 00000010} {010 00000100} {011 00001000} {100 00010000} {101 00100000} {110 01000000} {111 10000000} }

 add_fsm_encoding \
       {axi_datamover_pcc.sig_pcc_sm_state} \
       { }  \
       {{000 00000001} {001 00000010} {010 00000100} {011 00001000} {100 00010000} {101 00100000} {110 01000000} {111 10000000} }

 add_fsm_encoding \
       {axi_datamover_pcc__parameterized0.sig_pcc_sm_state} \
       { }  \
       {{000 00000001} {001 00000010} {010 00000100} {011 00001000} {100 00010000} {101 00100000} {110 01000000} {111 10000000} }

 add_fsm_encoding \
       {axi_datamover_ibttcc.sig_csm_state} \
       { }  \
       {{000 00000001} {001 00000010} {101 00000100} {110 00001000} {010 00010000} {011 00100000} {100 01000000} }

 add_fsm_encoding \
       {axi_datamover_ibttcc.sig_psm_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {111 0010000} {100 0100000} }

 add_fsm_encoding \
       {axi_datamover_s2mm_realign.sig_cmdcntl_sm_state} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} {011 0001000} {101 0010000} {100 0100000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized0.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized1.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized2.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }
