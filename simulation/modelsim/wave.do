view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/contador/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/contador/reset 
wave create -driver freeze -pattern clock -initialvalue U -period 5000ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/contador/switch 
wave create -driver freeze -pattern clock -initialvalue 1 -period 9000ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/contador/reset 
WaveCollapseAll -1
wave clipboard restore
