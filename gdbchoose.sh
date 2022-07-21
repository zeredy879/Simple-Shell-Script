#! /bin/bash
pwndbg="~/pwndbg/gdbinit.py"
gef="~/.gef.py"
peda="~/peda/peda.py"
gdbinit=~/.gdbinit
# here use your own path
echo -e "choose your gdb plugin:\n1.pwndbg 2.gef 3.peda"
read opt
>| $gdbinit
if [ $opt -eq "1" ];then
	echo "source $pwndbg" >| $gdbinit
elif [ $opt -eq "2" ];then
	echo "source $gef" >| $gdbinit
elif [ $opt -eq "3" ];then
	echo "source $peda" >| $gdbinit
fi
