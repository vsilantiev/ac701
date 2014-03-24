
set currentWorkingDirectory [pwd]

set bitFileName "/system.bit"
set tclFileName "/ps7_init.tcl"
set elfFileName "/sw.elf"

set elfFilePath $currentWorkingDirectory$elfFileName
set idx [string last "bin" $currentWorkingDirectory]
set currentWorkingDirectory [string replace $currentWorkingDirectory $idx [string length $currentWorkingDirectory] "hw"]
set bitFilePath $currentWorkingDirectory$bitFileName
set tclFilePath $currentWorkingDirectory$tclFileName

fpga -debugdevice devicenr 2 -f $bitFilePath
connect arm hw
source $tclFilePath
ps7_init
dow $elfFilePath
run
disconnect 64
exit
