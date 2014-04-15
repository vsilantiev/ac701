
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
š
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
Š
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
Y
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
x

Phase %s%s
101*constraints2
1.1 2default:default22
Build Netlist & NodeGraph (MT)2default:defaultZ18-101
K
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 13668ee88
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1701.688 ; gain = 23.5042default:default
:
.Phase 1 Build RT Design | Checksum: 1b2b3e9b7
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1704.195 ; gain = 26.0122default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
9
-Phase 2.1 Create Timer | Checksum: 1b2b3e9b7
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1704.199 ; gain = 26.0162default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
<
0Phase 2.2 Restore Routing | Checksum: 1b2b3e9b7
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1713.195 ; gain = 35.0122default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
@
4Phase 2.3 Special Net Routing | Checksum: 10cb85edc
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 1736.383 ; gain = 58.1992default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 1736.383 ; gain = 58.1992default:default
g

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101
w

Phase %s%s
101*constraints2
2.5.1 2default:default2/
Update timing with NCN CRPR2default:defaultZ18-101
l

Phase %s%s
101*constraints2
2.5.1.1 2default:default2"
Hold Budgeting2default:defaultZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1742.633 ; gain = 64.4492default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1742.633 ; gain = 64.4492default:default
9
-Phase 2.5 Update Timing | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1742.633 ; gain = 64.4492default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=4.82   | TNS=0      | WHS=-0.171 | THS=-259   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:22 . Memory (MB): peak = 1742.633 ; gain = 64.4492default:default
?
3Phase 2 Router Initialization | Checksum: 986367d4
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:22 . Memory (MB): peak = 1742.633 ; gain = 64.4492default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 1427763ea
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:24 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: 4521be0b
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:28 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: 4521be0b
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:29 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=3.24   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: 58c837c5
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:29 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: 58c837c5
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:29 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
l

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.2.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.2.1 Remove Overlaps | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:30 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:00:30 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=3.24   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.2.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.2.3 collectNewHoldAndFix | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:00:30 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
?
3Phase 4.2 Global Iteration 1 | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:00:30 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:57 ; elapsed = 00:00:30 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101
g

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101
:
.Phase 5.1 Update Timing | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:59 ; elapsed = 00:00:31 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=3.24   | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:00 ; elapsed = 00:00:31 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
e

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101
l

Phase %s%s
101*constraints2
6.1 2default:default2&
Full Hold Analysis2default:defaultZ18-101
i

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 6.1.1 Update Timing | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:34 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=3.24   | TNS=0      | WHS=0.023  | THS=0      |
2default:defaultZ35-57
?
3Phase 6.1 Full Hold Analysis | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:34 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
8
,Phase 6 Post Hold Fix | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:34 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 7 Verifying routed nets | Checksum: 1013dc4f6
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:34 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: a7be7706
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:36 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101

Post Routing Timing Summary %s
20*route2J
6| WNS=3.248  | TNS=0.000  | WHS=0.024  | THS=0.000  |
2default:defaultZ35-20
=
'The design met the timing requirement.
61*routeZ35-61
<
0Phase 9 Post Router Timing | Checksum: a7be7706
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:15 ; elapsed = 00:00:39 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: a7be7706
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:01:15 ; elapsed = 00:00:39 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
‡

%s
*constraints2p
\Time (s): cpu = 00:01:15 ; elapsed = 00:00:39 . Memory (MB): peak = 1750.633 ; gain = 72.4492default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¾
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
182default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ü
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:162default:default2
00:00:402default:default2
1750.6332default:default2
72.4492default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
ß
#The results of DRC are in file %s.
168*coretcl2ž
C/home/vladimir/260214/260214.runs/impl_2/dma_wrapper_drc_routed.rptC/home/vladimir/260214/260214.runs/impl_2/dma_wrapper_drc_routed.rpt2default:default8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
û
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:322default:default2
00:00:172default:default2
1756.8832default:default2
6.2502default:defaultZ17-268
€
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
‚
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:022default:default2
1756.8872default:default2
0.0002default:defaultZ17-268


End Record