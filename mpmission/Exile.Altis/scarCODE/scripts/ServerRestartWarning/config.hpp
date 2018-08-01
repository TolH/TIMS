class sc_cfgServerRestartWarning
{
    restartWarningTxt = "== WARNING == SERVER RESTART INFO"; // What the first line will say for all restart warnings
    warningSchedule[] = {60,30,10,5,2}; // At how many minutes should warnings be given
    enableDebug = -1; // Use 1 to enable
    serverUptimeHours = 3; // Server uptime in hours before automatic restart | DEFAULT: 4 | MINIMAL: 0.5; (that is minimum of 30 minutes) | Ignore this setting if not using dynamic restarts
};
