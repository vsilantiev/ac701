
H
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
L

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103
t
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611
m

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
1630.1602default:default2
0.0002default:defaultZ17-268
v

Phase %s%s
101*constraints2
1.1 2default:default20
Mandatory Logic Optimization2default:defaultZ18-101
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
22default:defaultZ31-138
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.012default:default2
1630.1602default:default2
0.0002default:defaultZ17-268
I
=Phase 1.1 Mandatory Logic Optimization | Checksum: 121076c24
*common
�

%s
*constraints2u
aTime (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.58 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
�

Phase %s%s
101*constraints2
1.2 2default:default2;
'Build Super Logic Region (SLR) Database2default:defaultZ18-101
T
HPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: 121076c24
*common
�

%s
*constraints2u
aTime (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.59 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.3 2default:default2#
Add Constraints2default:defaultZ18-101
<
0Phase 1.3 Add Constraints | Checksum: 121076c24
*common
�

%s
*constraints2u
aTime (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.59 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
f

Phase %s%s
101*constraints2
1.4 2default:default2 
Build Macros2default:defaultZ18-101
9
-Phase 1.4 Build Macros | Checksum: 1c0e42e52
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
v

Phase %s%s
101*constraints2
1.5 2default:default20
Routing Based Site Exclusion2default:defaultZ18-101
I
=Phase 1.5 Routing Based Site Exclusion | Checksum: 1c0e42e52
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
z

Phase %s%s
101*constraints2
1.6 2default:default24
 Implementation Feasibility check2default:defaultZ18-101
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[15]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[15]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[14]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[14]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[13]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[13]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[12]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[12]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[11]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[11]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2;
'dma_i/ADC_emul_0/lvds_p_reg[10]_LDC_i_12default:default2
12default:default2E
1	dma_i/ADC_emul_0/inst/lvds_p_reg[10]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[9]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[9]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[8]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[8]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[7]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[7]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[6]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[6]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[5]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[5]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[4]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[4]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[3]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[3]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[2]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[2]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[1]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[1]_LDC {LDCE}
2default:defaultZ30-568
�
�A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2:
&dma_i/ADC_emul_0/lvds_p_reg[0]_LDC_i_12default:default2
12default:default2D
0	dma_i/ADC_emul_0/inst/lvds_p_reg[0]_LDC {LDCE}
2default:defaultZ30-568
�6
bAn IO Bus %s with more than one IO standard is found. Components associated with this bus are: %s
12*place2 
FIXED_IO_mio2default:default2�5
� 
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[0]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[1]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[2]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[3]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[4]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[5]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[6]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[7]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[8]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[9]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[10]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[11]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[12]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[13]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[14]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[15]<MSGMETA::END> of IOStandard LVCMOS33
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[16]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[17]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[18]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[19]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[20]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[21]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[22]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[23]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[24]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[25]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[26]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[27]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[28]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[29]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[30]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[31]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[32]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[33]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[34]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[35]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[36]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[37]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[38]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[39]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[40]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[41]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[42]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[43]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[44]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[45]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[46]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[47]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[48]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[49]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[50]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[51]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[52]<MSGMETA::END> of IOStandard LVCMOS18
	<MSGMETA::BEGIN::BLOCK>FIXED_IO_mio[53]<MSGMETA::END> of IOStandard LVCMOS18"2
FIXED_IO_mio[0]2
	: of IOStandard LVCMOS33
	".
FIXED_IO_mio[1]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[2]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[3]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[4]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[5]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[6]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[7]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[8]: of IOStandard LVCMOS33
	".
FIXED_IO_mio[9]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[10]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[11]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[12]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[13]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[14]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[15]: of IOStandard LVCMOS33
	"/
FIXED_IO_mio[16]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[17]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[18]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[19]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[20]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[21]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[22]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[23]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[24]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[25]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[26]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[27]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[28]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[29]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[30]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[31]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[32]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[33]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[34]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[35]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[36]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[37]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[38]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[39]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[40]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[41]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[42]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[43]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[44]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[45]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[46]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[47]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[48]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[49]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[50]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[51]: of IOStandard LVCMOS18
	"/
FIXED_IO_mio[52]: of IOStandard LVCMOS18
	"-
FIXED_IO_mio[53]: of IOStandard LVCMOS182default:default8Z30-12
M
APhase 1.6 Implementation Feasibility check | Checksum: 1c0e42e52
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.7 2default:default2#
Pre-Place Cells2default:defaultZ18-101
<
0Phase 1.7 Pre-Place Cells | Checksum: 1c0e42e52
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1630.160 ; gain = 0.0002default:default
�

Phase %s%s
101*constraints2
1.8 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101
_
SPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1c0e42e52
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
t

Phase %s%s
101*constraints2
1.9 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101
m

Phase %s%s
101*constraints2
1.9.1 2default:default2%
Place Init Design2default:defaultZ18-101
n

Phase %s%s
101*constraints2
1.9.1.1 2default:default2$
Build Clock Data2default:defaultZ18-101
A
5Phase 1.9.1.1 Build Clock Data | Checksum: 20b3248e2
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
@
4Phase 1.9.1 Place Init Design | Checksum: 196d5c06a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
G
;Phase 1.9 Build Placer Netlist Model | Checksum: 196d5c06a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
r

Phase %s%s
101*constraints2
1.10 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101
}

Phase %s%s
101*constraints2
1.10.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101
P
DPhase 1.10.1 Constrain Global/Regional Clocks | Checksum: 196d5c06a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
E
9Phase 1.10 Constrain Clocks/Macros | Checksum: 196d5c06a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
@
4Phase 1 Placer Initialization | Checksum: 196d5c06a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
h

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101
;
/Phase 2 Global Placement | Checksum: 218291c0c
*common
�

%s
*constraints2p
\Time (s): cpu = 00:01:53 ; elapsed = 00:00:49 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
h

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101
t

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101
G
;Phase 3.1 Commit Multi Column Macros | Checksum: 218291c0c
*common
�

%s
*constraints2p
\Time (s): cpu = 00:01:54 ; elapsed = 00:00:49 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
v

Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101
I
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 207cd4b57
*common
�

%s
*constraints2p
\Time (s): cpu = 00:01:59 ; elapsed = 00:00:52 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
p

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101
C
7Phase 3.3 Area Swap Optimization | Checksum: 1f94dfe3a
*common
�

%s
*constraints2p
\Time (s): cpu = 00:01:59 ; elapsed = 00:00:52 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
o

Phase %s%s
101*constraints2
3.4 2default:default2)
Timing Path Optimizer2default:defaultZ18-101
B
6Phase 3.4 Timing Path Optimizer | Checksum: 1aa138947
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:01 ; elapsed = 00:00:53 . Memory (MB): peak = 1654.168 ; gain = 24.0082default:default
z

Phase %s%s
101*constraints2
3.5 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101
M
APhase 3.5 Commit Small Macros & Core Logic | Checksum: 164d49153
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:08 ; elapsed = 00:01:00 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
l

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101
?
3Phase 3.6 Re-assign LUT pins | Checksum: 164d49153
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:09 ; elapsed = 00:01:00 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
;
/Phase 3 Detail Placement | Checksum: 164d49153
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:09 ; elapsed = 00:01:00 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101
|

Phase %s%s
101*constraints2
4.1 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101
N
BPhase 4.1 Post Placement Timing Optimization | Checksum: d6e00b78
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:15 ; elapsed = 00:01:03 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
p

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101
B
6Phase 4.2 Post Placement Cleanup | Checksum: d6e00b78
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:15 ; elapsed = 00:01:03 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
j

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101
p

Phase %s%s
101*constraints2
4.3.1 2default:default2(
Congestion Reporting2default:defaultZ18-101
B
6Phase 4.3.1 Congestion Reporting | Checksum: d6e00b78
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:15 ; elapsed = 00:01:03 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
n

Phase %s%s
101*constraints2
4.3.2 2default:default2&
updateTiming final2default:defaultZ18-101
@
4Phase 4.3.2 updateTiming final | Checksum: 97dbd661
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:19 ; elapsed = 00:01:04 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
p

Phase %s%s
101*constraints2
4.3.3 2default:default2(
Dump Critical Paths 2default:defaultZ18-101
B
6Phase 4.3.3 Dump Critical Paths  | Checksum: 97dbd661
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:19 ; elapsed = 00:01:05 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
g

Phase %s%s
101*constraints2
4.3.4 2default:default2
Restore STA2default:defaultZ18-101
9
-Phase 4.3.4 Restore STA | Checksum: 97dbd661
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:19 ; elapsed = 00:01:05 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
k

Phase %s%s
101*constraints2
4.3.5 2default:default2#
Print Final WNS2default:defaultZ18-101
m
!Post Placement Timing Summary %s
2*	placeflow20
| WNS=4.537  | TNS=0.000  |
2default:defaultZ30-100
=
1Phase 4.3.5 Print Final WNS | Checksum: 97dbd661
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:29 ; elapsed = 00:01:09 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
<
0Phase 4.3 Placer Reporting | Checksum: 97dbd661
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:30 ; elapsed = 00:01:09 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
q

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101
C
7Phase 4.4 Final Placement Cleanup | Checksum: ef334cbf
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:30 ; elapsed = 00:01:09 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
R
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: ef334cbf
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:30 ; elapsed = 00:01:09 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
5
)Ending Placer Task | Checksum: 13668ee88
*common
�

%s
*constraints2p
\Time (s): cpu = 00:02:30 ; elapsed = 00:01:09 . Memory (MB): peak = 1678.180 ; gain = 48.0202default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
182default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:302default:default2
00:01:102default:default2
1678.1802default:default2
48.0202default:defaultZ17-268
a

DEBUG : %s144*timing2<
(Generate clock report | CPU: 0.56 secs 
2default:defaultZ38-163
�
vreport_utilization: Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.29 . Memory (MB): peak = 1678.180 ; gain = 0.000
*common
m

DEBUG : %s134*designutils2C
/Generate Control Sets report | CPU: 0.15 secs 
2default:defaultZ20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2
00:00:012default:default2
1678.1842default:default2
0.0002default:defaultZ17-268


End Record