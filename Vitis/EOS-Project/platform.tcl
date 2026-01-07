# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\ProjectenVivado\Academiejaar_25-26\EOS-Project\Vitis\EOS-Project\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\ProjectenVivado\Academiejaar_25-26\EOS-Project\Vitis\EOS-Project\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {EOS-Project}\
-hw {C:\ProjectenVivado\Academiejaar_25-26\EOS-Project\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/ProjectenVivado/Academiejaar_25-26/EOS-Project/Vitis}

platform write
platform generate -domains 
platform active {EOS-Project}
platform generate
domain create -name {freertos} -os {freertos} -proc {ps7_cortexa9_0} -arch {32-bit} -display-name {freertos} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
bsp reload
bsp setlib -name lwip220 -ver 1.0
bsp write
bsp reload
catch {bsp regenerate}
bsp config api_mode "SOCKET_API"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos 
platform clean
platform generate
