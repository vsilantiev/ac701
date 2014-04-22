
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
