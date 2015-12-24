# labview-gui

12/24/15: the formatting of the input file is very particular right now (I'm working on fixing that, bare with me). Each type of data must be prefaced as follows:

velocity - VELO

acceleration - ACEL

temperature - TEMP

internal pressure - INTP

tank pressure - TNKP

roll - ROLL

pitch - PITC

yaw - YAW*

x-position - XPOS

y-position - YPOS

z-position - ZPOS

power consumption - PCON

The file must end with EOF* (it really shouldn't matter, but just to be safe).

There must be a : or - or / or some other type of separator between the preface (e.g. VELO) and the data being entered (e.g. 341.85; again, I'm fixing that right now).

There is a test file included in this repo that demonstrates how the data should be formatted, so that it can be entered manually (ick) or formatted by a bot (yay).

*NOTE*: This is a very rough first incarnation of the GUI. I'm currently fixing it right now so that the data formatting can be a little more flexibile to make it easier for everyone in syst-eng and for the team as a whole.
