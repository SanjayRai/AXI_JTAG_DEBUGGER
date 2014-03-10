
F
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113
õ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-347
ã
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-349
e
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22
I

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103
G
Running DRC with %s threads
24*drc2
82default:defaultZ23-27
L
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
ç

%s
*constraints2v
bTime (s): cpu = 00:00:00.53 ; elapsed = 00:00:00.52 . Memory (MB): peak = 1569.086 ; gain = 11.0272default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
4
(Logic Optimization | Checksum: 4f1502b3
*common
<
%Done setting XDC timing constraints.
35*timingZ38-35
/
Deriving generated clocks
2*timingZ38-2
{

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101
U
Implementing debug core %s...93*	chipscope2
dbg_hub2default:defaultZ16-126
ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
1732.3482default:default2
0.0002default:defaultZ17-268
M
APhase 1 Generate And Synthesize Debug Cores | Checksum: 467be2f7
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:54 . Memory (MB): peak = 1732.348 ; gain = 163.2622default:default
`

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
12default:defaultZ31-138
B
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49
2
&Phase 2 Retarget | Checksum: d1276bce
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:55 . Memory (MB): peak = 1732.348 ; gain = 163.2622default:default
l

Phase %s%s
101*constraints2
3 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
12default:defaultZ31-138
B
Eliminated %s cells.
10*opt2
5472default:defaultZ31-10
>
2Phase 3 Constant Propagation | Checksum: b489cb8f
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:58 . Memory (MB): peak = 1732.348 ; gain = 163.2622default:default
]

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101
N
 Eliminated %s unconnected nets.
12*opt2
34102default:defaultZ31-12
O
!Eliminated %s unconnected cells.
11*opt2
31672default:defaultZ31-11
/
#Phase 4 Sweep | Checksum: 35fa0474
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:01:00 . Memory (MB): peak = 1732.348 ; gain = 163.2622default:default
@
4Ending Logic Optimization Task | Checksum: 35fa0474
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:01:00 . Memory (MB): peak = 1732.348 ; gain = 163.2622default:default
7
+Implement Debug Cores | Checksum: 467be2f7
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
∏
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2n
Xjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_sync_r4_neq_r3_i_2	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
∏
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2n
Xjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_sync_r4_neq_r3_i_3	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
∏
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2n
Xjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_sync_r4_neq_r3_i_4	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
∏
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2n
Xjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_sync_r4_neq_r3_i_5	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
º
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2r
\jtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_sync_r4_neq_r3_reg_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
«
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2}
gjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/xadc_supplied_temperature.sample_timer_en_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
»
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2~
hjtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/xadc_supplied_temperature.sample_timer_clr_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Ø
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2e
Ojtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[11]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Ø
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2e
Ojtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[10]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[9]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[8]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[7]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[6]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[5]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[4]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[3]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[2]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[1]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
Æ
$%s: '%s' is not a valid startpoint.
402*constraints2!
set_max_delay2default:default2d
Njtag_dbg_block_i/mig_7series_0/temp_mon_enabled.u_tempmon/device_temp_r[0]_i_1	2default:default2¡
™/home/sanjayr/projects/KC705/JTAG_VIO_AXI_DEBUGGER/Vivado_2013.3_test_common_dir/axi_jtag_debugger_IPI_example/vivado_prj/project_X/project_X.srcs/sources_1/bd/jtag_dbg_block/ip/jtag_dbg_block_mig_7series_0_0/jtag_dbg_block_mig_7series_0_0/user_design/constraints/jtag_dbg_block_mig_7series_0_0.xdc2default:default2
8172default:default8@Z18-402
<
%Done setting XDC timing constraints.
35*timingZ38-35
4
Applying IDT optimizations ...
9*pwroptZ34-9
6
Applying ODC optimizations ...
10*pwroptZ34-10


*pwropt
Ú
©WRITE_MODE attribute of %s BRAM(s) out of a total of %s was updated to NO_CHANGE to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
232default:defaultZ34-162
[
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201
°
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
102default:default2
02default:default2
462default:defaultZ34-65
@
4Ending Power Optimization Task | Checksum: 7a6fbac9
*common
à

%s
*constraints2q
]Time (s): cpu = 00:00:32 ; elapsed = 00:00:20 . Memory (MB): peak = 1917.941 ; gain = 185.5942default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
392default:default2
82default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
˚
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:01:392default:default2
00:01:212default:default2
1917.9412default:default2
361.8832default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
à
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.332default:default2
00:00:00.342default:default2
1917.9452default:default2
0.0002default:defaultZ17-268
ˇ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:202default:default2
00:00:062default:default2
1917.9452default:default2
0.0042default:defaultZ17-268


End Record