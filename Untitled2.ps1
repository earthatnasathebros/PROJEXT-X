/dev/vda {d00_os 50gib
{do1_switch 4gib
{do2_data~ C:\ the man.api"
/dev/vdb
/dev/vd[n] /do3_storge[c:\]nTB,min,1xDisk
"Storage > Physical Volumes > Cluster Data Path Device Management > update a Data Path Device
<Push14-Location WindowsPowerShell -StackName; wasp
 /dev/vda{do2_data~theman.api
 -Stack.update"

$AllDevices = gwmi -Class Win32_DiskDrive -do2_data~theman.api 'root\CIMV2'

ForEach ($Device in $AllDevices) {

if($Device.Model -like 'PURE FlashArray*'*/
tree node;