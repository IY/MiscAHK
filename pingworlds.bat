REM Script is used for pinging all the OSRS worlds. Copy & paste into notepad, save as checkping.bat file then run it.
REM Contact me - RSN: Jiklim | Twitter: @JiklimRS | Reddit: /u/Cameronza | Twitch: Cameronza
REM Source: https://rsbuddy.com/community/topic/12930-ping-batch-file/

@ECHO off
 
SET worlds=1,2,3,4,5,6,8,9,10,11,12,13,14,16,17,18,19,20,21,22,25,26,27,28,29,30,33,34,35,36,37,38,41,42,43,44,45,46,49,50,51,52,53,54,57,58,59,60,61,62,65,66,67,68,69,70,73,74,75,76,77,78,81,82,83,84,85,86,93,94
 
FOR %%i IN (%worlds%) DO (
Echo | SET /p=World %%i
FOR /F "tokens=5" %%a IN ('Ping oldschool%%i.runescape.com -n 1 ^| FIND "time="') DO Echo %%a
)
PAUSE