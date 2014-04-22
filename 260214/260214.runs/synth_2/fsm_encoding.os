
 add_fsm_encoding \
       {axi_lite.lite_sm_cs} \
       { }  \
       {{000 0000001} {001 0000010} {010 0000100} }

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
       {axi_dwidth_converter_v2_1_w_upsizer_pktfifo.mi_state} \
       { }  \
       {{000 00000001} {001 00000010} {011 00000100} {010 00001000} {110 00010000} {111 00100000} {101 01000000} {100 10000000} }

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
