class CfgServerInfoMenu
{
    addAction = 0; // Enable/disable action menu item | use 0 to disable | default: 1 (enabled)
    antiHACK = "infiSTAR + BattlEye";
    hostedBy = "GTXGaming";
    ipPort = "192.154.230.201:2302";
    openKey = ""; // https://community.bistudio.com/wiki/inputAction/actions
    openAtLogin = no;
    restart = 3; // Amount of hours before server automatically restarts
    serverName = "Blazin! Exile Server";
    class menuItems
    {
//===========================================================//
		//ADMIN MENU
		class ADMIN
		{
			menuName = "Admins";
			title = "Administrators";
			content[] = 
			{
				//ADMIN\OWNER
				"<t size='1.35' color='#1750e0'>ADMIN\OWNER:</t><br />",
				"     <img image='scarCODE\ServerInfoMenu\img\bada.jpg' /><t color='#c91e49'>   BADASS</t><br />",
				"     <img image='scarCODE\ServerInfoMenu\img\deep.jpg' /><t color='#c91e49'>   DEEPDEMON211</t><br />",
				//ADMIN
				"<t size='1.35' color='#1750e0'>ADMIN:</t><br />",
				"     <img image='scarCODE\ServerInfoMenu\img\0908.jpg' /><t color='#d3cd0c'>   0908</t><br />",
				"     <img image='scarCODE\ServerInfoMenu\img\0908.jpg' /><t color='#d3cd0c'>   Softhands</t><br />",
				"     <img image='scarCODE\ServerInfoMenu\img\0908.jpg' /><t color='#d3cd0c'>   Capdan</t><br />"
			};
		};
//===========================================================//
		//DISCORD MENU
		class DISCORD
		{
			menuName = "Help & Info";
			title = "Discord, Gametracker and Donation";
			content[] = 
			{
				//Discord
				"<t size='1.35' color='#1750e0'>DISCORD SERVER:</t><br />",
				"     <a href='https://discord.gg/XhJzAem'><img image='scarCODE\ServerInfoMenu\img\discord.jpg' size='2' /></a>   Click the icon to join our Exile Discord server<br />",
				//"     <br />",
				"<br />",
				//GAMETRACKER
				"<t size='1.35' color='#1750e0'>GAMETRACKER INFO:</t><br />",
				"     <a href='https://www.gametracker.com/server_info/192.154.230.201:2302/'><img image='scarCODE\ServerInfoMenu\img\gametracker.jpg' size='2' /></a>   Server Info<br />",
				//"     <br />",
				"<br />",
				//DONATION LINK
				"<t size='1.35' color='#1750e0'>DONATION LINK:</t><br />",
				"     <a href='https://www.paypal.me/BlazinPVEExileServer'><img image='scarCODE\ServerInfoMenu\img\donate.jpg' size='2' /></a>   Click the icon if you want to donate<br />",
				//"     <br />",
				"     <br />"
			};
		};
//===========================================================//
		//CHANGELOG MENU
		class CHANGELOG
		{
			menuName = "Changelogs";
			title = "Recent Changes";
			content[] = 
			{
				"<t size='1.35' color='#1750e0'>(RECENT CHANGES DATE):</t><br />",
				"     + ADDED STUFF PLACEHOLDER.<br />",
				"     - REMOVED STUFF PLACEHOLDER.<br />",
				"     + ADDED STUFF PLACEHOLDER.<br />",
				"<t size='1.35' color='#1750e0'>(RECENT CHANGES DATE):</t><br />",
				"     - REMOVED STUFF PLACEHOLDER.<br />",
				"     + ADDED STUFF PLACEHOLDER.<br />",
				"     - REMOVED STUFF PLACEHOLDER.<br />"
			};
		};
//===========================================================//
		//CREDITS MENU
		class CREDITS
		{
			menuName = "Credits";
			title = "Credits where credits due";
			content[] = 
			{
				"<t size='1.35' color='#1750e0'>IT07:</t> coder/creator of this menu",
				"<br />",
				"<t size='1.35' color='#1750e0'>infiSTAR:</t> coder/creator of infiSTAR"
			};
		};
//===========================================================//
    };
};