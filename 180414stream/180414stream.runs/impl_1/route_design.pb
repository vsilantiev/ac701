
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
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 110363833
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:14 . Memory (MB): peak = 1623.316 ; gain = 107.3242default:default
9
-Phase 1 Build RT Design | Checksum: e4456341
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 1623.316 ; gain = 107.3242default:default
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
8
,Phase 2.1 Create Timer | Checksum: e4456341
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 1623.320 ; gain = 107.3282default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: e4456341
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 1632.316 ; gain = 116.3242default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:15 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
9
-Phase 2.5 Update Timing | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=2.77   | TNS=0      | WHS=-0.191 | THS=-197   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:28 ; elapsed = 00:00:18 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
?
3Phase 2 Router Initialization | Checksum: d267038c
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 1656.316 ; gain = 140.3242default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 172a32393
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:31 ; elapsed = 00:00:20 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
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
>
2Phase 4.1.1 Remove Overlaps | Checksum: 124b04ecb
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:23 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.1.2 Update Timing | Checksum: 124b04ecb
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:23 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.465  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: bd786306
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:23 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: bd786306
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:23 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
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
=
1Phase 4.2.1 Remove Overlaps | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.2.2 Update Timing | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.465  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.2.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
>
2Phase 4.2 Global Iteration 1 | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
<
0Phase 4 Rip-up And Reroute | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:39 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
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
9
-Phase 5.1 Update Timing | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.479  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:40 ; elapsed = 00:00:24 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
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
;
/Phase 6.1.1 Update Timing | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:42 ; elapsed = 00:00:25 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.479  | TNS=0      | WHS=0.025  | THS=0      |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:42 ; elapsed = 00:00:25 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
7
+Phase 6 Post Hold Fix | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:42 ; elapsed = 00:00:25 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: b42e997a
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
<
0Phase 8 Depositing Routes | Checksum: 14437c119
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:44 ; elapsed = 00:00:26 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101

Post Routing Timing Summary %s
20*route2J
6| WNS=0.480  | TNS=0.000  | WHS=0.026  | THS=0.000  |
2default:defaultZ35-20
=
'The design met the timing requirement.
61*routeZ35-61
=
1Phase 9 Post Router Timing | Checksum: 14437c119
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:48 ; elapsed = 00:00:28 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
4
Router Completed Successfully
16*routeZ35-16
4
(Ending Route Task | Checksum: 14437c119
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:48 ; elapsed = 00:00:28 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:48 ; elapsed = 00:00:28 . Memory (MB): peak = 1668.316 ; gain = 152.3242default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
½
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
22default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:492default:default2
00:00:292default:default2
1668.3162default:default2
152.3242default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27

#The results of DRC are in file %s.
168*coretcl2Î
[/home/vladimir/Z/zedboard/180414stream/180414stream.runs/impl_1/dmas_wrapper_drc_routed.rpt[/home/vladimir/Z/zedboard/180414stream/180414stream.runs/impl_1/dmas_wrapper_drc_routed.rpt2default:default8Z2-168
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
00:00:182default:default2
00:00:102default:default2
1676.3242default:default2
8.0082default:defaultZ17-268
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
00:00:012default:default2
00:00:012default:default2
1676.3282default:default2
0.0002default:defaultZ17-268


End Record