# labview-gui

UPDATE (12/24/15 pt. 2): the formatting of the input file just became significantly less finnicky. The data still needs to be prefaced with one of the codes I outlined below and it still needs to be input line by line, BUT there no longer needs to be any sort of separator between the data-type and the data.

PATCH NOTES:

- the GUI should now prompt the user for a data file upon program startup

- the GUI should now work regardless of any type of seperator (or lack thereof) between the data type and the data

- the GUI updates ever so slightly faster now (<2% difference)


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

~~There must be a : or - or / or some other type of separator between the preface (e.g. VELO) and the data being entered (e.g. 341.85; again, I'm fixing that right now).~~

There is a test file included in this repo that demonstrates how the data should be formatted, so that it can be entered manually (ick) or formatted by a bot (yay).

*NOTE*: This is a very rough first incarnation of the GUI. I'm currently fixing it right now so that the data formatting can be a little more flexibile to make it easier for everyone in syst-eng and for the team as a whole.
