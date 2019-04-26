	@ECHO off
	COLOR 0A
	TITLE EXILE Server restarter
	SETLOCAL EnableExtensions enabledelayedexpansion
	SET StartServer=arma3server.exe
	SET StartLOGREADER=Arma3_Server___LogReader.py
	SET /A restartCounter=0


	REM -================================================================================-
	REM RESTART TIME HERE IN HOURS
	SET Restart= 3
	REM SERVER LAUNCH PARAMETERS
	SET ServerMods= "-serverMod=@ExileServer;@Advanced Rappelling;@Advanced Urban Rappelling;@AdvancedSlingLoading;@Ares Mod - Achilles Expansion;" "-mod=@Exile;@CBA_A3;@Extended_Base_Mod;@Extended Survival Pack;@JSRS SOUNDMOD;@Blastcore Edited (standalone version);@RHSAFRF;@RHSGREF;@RHSSAF;@RHSUSAF;@NIArms All in One;@FFAA MOD;@SMA;@Multi-play Uniforms;@Enhanced Soundscape;@Enhanced Movement;" "-config=@ExileServer\config.cfg" "-cfg=@ExileServer\basic.cfg" "-profiles=SC_EXILE" "-port=2302" "-profiles=SC_EXILE" "-name=SC_EXILE" -autoinit -maxmem=3071 -filepatching
	SET /A Hours=%Restart%*3600
	GOTO StartArma3Server
	REM -================================================================================-


	:StartArma3Server
	ECHO 			   ========================================
	ECHO 		Starting Arma 3 Server, The server has been restarted (%restartCounter%) times.
	ECHO 			   ========================================
	START /b %StartServer% %ServerMods%
	ECHO 	      	   Server SET to restart every %Restart% Hours, standing by...
	TIMEOUT 6 /NOBREAK
	CLS
	START /b %StartLOGREADER%
	REM TIMEOUT %Hours% /NOBREAK
	REM GOTO RestartServer

	REM :RestartServer
	REM SET /A restartCounter+=1
	REM ECHO 			   ========================================
	REM ECHO 			Please wait while the server is restarting.
	REM ECHO 			   ========================================
    REM TASKKILL /F /IM %StartServer% >nul
	REM TIMEOUT 4 >nul
	REM CLS
	REM GOTO StartArma3Server