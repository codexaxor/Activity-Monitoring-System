-- 	SITE 1 SQL file with all the records
clear screen;
set sqlblanklines on


--delete existing table
drop table process cascade constraints;
drop table task;
drop table network;



-- creating process Table
create table process(
Handles integer, 
NPM integer,
PM integer,
WS integer,
CPU number(5,2) null,
SI integer,
PID integer,
Process_Name varchar2(40),
    PRIMARY KEY (PID)
);



-- creating task Table
create table task(
Image_Name varchar2(40), 
PID integer,
Session_Name varchar2(20),
session_id integer,
memory integer
);




-- creating network Table
create table network(
Protocol VARCHAR2(10), 
Local_Address VARCHAR2(25), 
Foreign_Address VARCHAR2(25), 
Current_State VARCHAR2(15), 
PID INTEGER
);






-- insert data into process
insert into process values(394, 23, 17744, 27608, 0.44, 1, 1320, 'ApplicationFrameHost');
insert into process values(138, 9, 3620, 7604, 0.05, 0, 2544, 'audiodg');
insert into process values(131, 11, 6612, 5996, 0.02, 0, 4892, 'bitmask_helper');
insert into process values(509, 28, 23384, 324, 0.91, 1, 1748, 'Calculator');
insert into process values(236, 15, 15388, 29308, 0.27, 1, 2120, 'chrome');
insert into process values(234, 15, 16108, 29780, 0.25, 1, 3240, 'chrome');
insert into process values(244, 17, 24536, 45116, 6.06, 1, 3600, 'chrome');
insert into process values(806, 43, 265448, 246272, 74.25, 1, 3776, 'chrome');
insert into process values(234, 15, 16180, 30736, 0.42, 1, 4424, 'chrome');
insert into process values(233, 8, 1732, 6468, 0.09, 1, 4512, 'chrome');
insert into process values(264, 14, 8276, 16596, 0.78, 1, 4580, 'chrome');
insert into process values(347, 23, 26860, 43808, 29.33, 1, 5688, 'chrome');
insert into process values(1847, 62, 163640, 216600, 128.86, 1, 5708, 'chrome');
insert into process values(237, 15, 18832, 32596, 0.69, 1, 6708, 'chrome');
insert into process values(510, 49, 141280, 131516, 63.66, 1, 7872, 'chrome');
insert into process values(245, 18, 111756, 126160, 19.3, 1, 9028, 'chrome');
insert into process values(311, 19, 39060, 66348, 5.17, 1, 9120, 'chrome');
insert into process values(236, 15, 15968, 29420, 0.25, 1, 9224, 'chrome');
insert into process values(389, 16, 29864, 48708, 2.39, 1, 9520, 'chrome');
insert into process values(307, 17, 6784, 17548, 0.33, 1, 9708, 'chrome');
insert into process values(263, 18, 30236, 56772, 0.8, 1, 10108, 'chrome');
insert into process values(303, 21, 44220, 43432, 1.44, 1, 10164, 'chrome');
insert into process values(216, 14, 12104, 23132, 0.16, 1, 10656, 'chrome');
insert into process values(77, 5, 2496, 3876, 0.0, 1, 6080, 'cmd');
insert into process values(165, 8, 1664, 8768, 0.08, 1, 3588, 'CompPkgSrv');
insert into process values(119, 8, 6516, 6312, 0.02, 1, 1212, 'conhost');
insert into process values(262, 13, 7604, 13936, 3.27, 1, 1964, 'conhost');
insert into process values(258, 13, 4124, 13880, 3.55, 1, 3020, 'conhost');
insert into process values(603, 22, 2136, 5328, 1.44, 0, 544, 'csrss');
insert into process values(578, 27, 2492, 5172, 15.08, 1, 628, 'csrss');
insert into process values(414, 16, 3812, 14140, 4.16, 1, 6288, 'ctfmon');
insert into process values(351, 18, 4528, 13588, 0.22, 0, 4680, 'dasHost');
insert into process values(231, 17, 3928, 10576, 0.17, 1, 7008, 'dllhost');
insert into process values(898, 42, 50804, 52204, 124.0, 1, 520, 'dwm');
insert into process values(2315, 79, 40104, 107896, 41.05, 1, 6516, 'explorer');
insert into process values(426, 25, 22756, 25880, 0.19, 1, 632, 'firefox');
insert into process values(494, 47, 75800, 77136, 5.38, 1, 880, 'firefox');
insert into process values(1190, 93, 92904, 90080, 9.58, 1, 4016, 'firefox');
insert into process values(1232, 96, 114736, 166372, 7.02, 1, 4484, 'firefox');
insert into process values(566, 65, 129740, 130256, 28.89, 1, 8608, 'firefox');
insert into process values(737, 106, 246340, 267080, 158.28, 1, 9084, 'firefox');
insert into process values(2560, 183, 316648, 410412, 188.2, 1, 9876, 'firefox');
insert into process values(687, 67, 161656, 184548, 45.88, 1, 10408, 'firefox');
insert into process values(452, 47, 90452, 108912, 19.95, 1, 10676, 'firefox');
insert into process values(692, 57, 108812, 135164, 12.72, 1, 10884, 'firefox');
insert into process values(478, 38, 42812, 60536, 2.91, 1, 10944, 'firefox');
insert into process values(565, 50, 98584, 117496, 11.92, 1, 11692, 'firefox');
insert into process values(1226, 91, 99600, 109152, 6.61, 1, 11780, 'firefox');
insert into process values(489, 23, 10372, 21284, 2.95, 1, 8820, 'flux');
insert into process values(32, 5, 1684, 2924, 0.61, 0, 936, 'fontdrvhost');
insert into process values(32, 8, 4100, 6796, 1.03, 1, 944, 'fontdrvhost');
insert into process values(182, 11, 1728, 1536, 0.03, 0, 6828, 'GoogleCrashHandler');
insert into process values(161, 9, 1708, 1080, 0.03, 0, 6840, 'GoogleCrashHandler64');
insert into process values(792, 36, 149460, 41996, 5.66, 1, 3480, 'googledrivesync');
insert into process values(47, 5, 3196, 3440, 3.5, 1, 8932, 'googledrivesync');
insert into process values(157, 11, 1772, 8368, 0.03, 1, 8748, 'hkcmd');
insert into process values(0, 0, 60, 8, null, 0, 0, 'Idle');
insert into process values(207, 12, 2032, 9444, 0.03, 1, 8784, 'igfxpers');
insert into process values(157, 11, 1832, 8472, 0.02, 1, 8668, 'igfxtray');
insert into process values(373, 18, 3072, 14440, 0.64, 1, 11136, 'jucheck');
insert into process values(265, 15, 2356, 14908, 0.16, 1, 9088, 'jusched');
insert into process values(556, 50, 36324, 41028, 3.48, 0, 2652, 'Lavasoft.WCAssistant.WinService');
insert into process values(1470, 22, 7332, 16476, 13.28, 0, 780, 'lsass');
insert into process values(0, 0, 824, 246720, 17.86, 0, 1628, 'Memory Compression');
insert into process values(758, 50, 44264, 30052, 1.5, 1, 2288, 'Microsoft.Photos');
insert into process values(999, 81, 237360, 182288, 360.0, 0, 3088, 'MsMpEng');
insert into process values(385, 19, 7024, 24532, 0.44, 1, 484, 'MusNotifyIcon');
insert into process values(205, 12, 3576, 8656, 0.05, 0, 5388, 'NisSrv');
insert into process values(147, 9, 1812, 5868, 0.03, 0, 3040, 'nssm');
insert into process values(538, 62, 833364, 1256, 5.27, 0, 2944, 'oracle');
insert into process values(524, 30, 67984, 56776, 2.33, 1, 4664, 'powershell');
insert into process values(324, 20, 7992, 19388, 31.48, 1, 11316, 'PubMonitor');
insert into process values(0, 12, 8220, 71280, 1.08, 0, 96, 'Registry');
insert into process values(330, 17, 6012, 23836, 0.42, 1, 3136, 'RuntimeBroker');
insert into process values(121, 8, 1460, 7008, 0.03, 1, 6764, 'RuntimeBroker');
insert into process values(287, 17, 5764, 22904, 0.89, 1, 6852, 'RuntimeBroker');
insert into process values(138, 9, 1656, 7892, 0.03, 1, 6908, 'RuntimeBroker');
insert into process values(783, 31, 13396, 39460, 4.09, 1, 7420, 'RuntimeBroker');
insert into process values(367, 20, 6276, 25860, 1.59, 1, 8136, 'RuntimeBroker');
insert into process values(391, 20, 10172, 30164, 0.52, 1, 8972, 'RuntimeBroker');
insert into process values(208, 11, 2532, 15872, 0.06, 1, 8988, 'RuntimeBroker');
insert into process values(154, 9, 2016, 8848, 0.05, 0, 11372, 'SearchFilterHost');
insert into process values(778, 73, 34140, 42700, 7.55, 0, 7296, 'SearchIndexer');
insert into process values(377, 13, 2628, 12840, 0.05, 0, 1484, 'SearchProtocolHost');
insert into process values(1405, 101, 130464, 89668, 15.67, 1, 7240, 'SearchUI');
insert into process values(260, 12, 3096, 11992, 0.33, 0, 8960, 'SecurityHealthService');
insert into process values(676, 11, 5716, 9124, 6.53, 0, 764, 'services');
insert into process values(666, 31, 11112, 20124, 17.78, 1, 7836, 'SettingSyncHost');
insert into process values(90, 6, 3376, 6144, 0.19, 0, 8840, 'SgrmBroker');
insert into process values(592, 29, 19052, 60668, 2.77, 1, 7084, 'ShellExperienceHost');
insert into process values(529, 18, 6308, 28016, 3.75, 1, 5856, 'sihost');
insert into process values(53, 3, 1188, 1044, 0.2, 0, 408, 'smss');
insert into process values(439, 22, 5468, 12700, 0.17, 0, 2428, 'spoolsv');
insert into process values(141, 9, 1896, 7680, 0.06, 0, 2592, 'sqlwriter');
insert into process values(577, 28, 19368, 54704, 1.41, 1, 6512, 'StartMenuExperienceHost');
insert into process values(1302, 22, 9316, 17436, 8.5, 0, 76, 'svchost');
insert into process values(265, 9, 2256, 7268, 1.0, 0, 492, 'svchost');
insert into process values(220, 13, 2296, 10312, 0.11, 0, 532, 'svchost');
insert into process values(87, 5, 988, 3776, 0.02, 0, 892, 'svchost');
insert into process values(1143, 25, 11016, 27900, 36.25, 0, 912, 'svchost');
insert into process values(116, 7, 1360, 5068, 0.02, 0, 1064, 'svchost');
insert into process values(153, 10, 2028, 11928, 0.16, 0, 1072, 'svchost');
insert into process values(146, 13, 1708, 5784, 0.0, 0, 1140, 'svchost');
insert into process values(417, 14, 15168, 16576, 2.14, 0, 1284, 'svchost');
insert into process values(222, 12, 2348, 10432, 0.06, 0, 1308, 'svchost');
insert into process values(230, 12, 2584, 13536, 19.58, 0, 1352, 'svchost');
insert into process values(225, 13, 4216, 11636, 0.89, 0, 1368, 'svchost');
insert into process values(168, 9, 2016, 7596, 0.08, 0, 1380, 'svchost');
insert into process values(232, 7, 1308, 5648, 0.03, 0, 1388, 'svchost');
insert into process values(141, 26, 4996, 8800, 0.13, 0, 1456, 'svchost');
insert into process values(422, 18, 7444, 22344, 2.2, 1, 1488, 'svchost');
insert into process values(230, 10, 2264, 7488, 0.94, 0, 1540, 'svchost');
insert into process values(175, 12, 1912, 8284, 0.05, 0, 1584, 'svchost');
insert into process values(185, 9, 1916, 7428, 0.23, 0, 1664, 'svchost');
insert into process values(161, 11, 2404, 24128, 5.09, 0, 1672, 'svchost');
insert into process values(366, 15, 4496, 11336, 0.72, 0, 1740, 'svchost');
insert into process values(272, 14, 3164, 8160, 3.75, 0, 1804, 'svchost');
insert into process values(391, 19, 6096, 15156, 1.81, 0, 1832, 'svchost');
insert into process values(381, 11, 2644, 8524, 1.63, 0, 2036, 'svchost');
insert into process values(378, 14, 3372, 13548, 0.33, 0, 2068, 'svchost');
insert into process values(124, 11, 1628, 5996, 0.09, 0, 2164, 'svchost');
insert into process values(349, 15, 2356, 9332, 0.14, 0, 2172, 'svchost');
insert into process values(262, 11, 2700, 9924, 0.83, 0, 2208, 'svchost');
insert into process values(183, 9, 2040, 7424, 3.16, 0, 2244, 'svchost');
insert into process values(212, 14, 2360, 11904, 0.17, 0, 2272, 'svchost');
insert into process values(412, 32, 12244, 20716, 1.97, 0, 2464, 'svchost');
insert into process values(270, 12, 2452, 11644, 0.13, 0, 2496, 'svchost');
insert into process values(192, 10, 8404, 16560, 9.55, 0, 2532, 'svchost');
insert into process values(184, 11, 1964, 7800, 0.08, 0, 2548, 'svchost');
insert into process values(483, 23, 8424, 32956, 1.45, 1, 2768, 'svchost');
insert into process values(527, 24, 16144, 26560, 5.17, 0, 2824, 'svchost');
insert into process values(159, 7, 1524, 5724, 0.06, 0, 2840, 'svchost');
insert into process values(416, 16, 10292, 18148, 5.09, 0, 2868, 'svchost');
insert into process values(354, 18, 22264, 30092, 29.77, 0, 2876, 'svchost');
insert into process values(376, 26, 4404, 13884, 3.58, 0, 2888, 'svchost');
insert into process values(133, 9, 1624, 6020, 0.03, 0, 2896, 'svchost');
insert into process values(161, 7, 1324, 5216, 0.03, 0, 2904, 'svchost');
insert into process values(170, 10, 1928, 7608, 0.06, 0, 2912, 'svchost');
insert into process values(386, 19, 4708, 21024, 0.25, 0, 2920, 'svchost');
insert into process values(125, 8, 1424, 6932, 0.03, 0, 3036, 'svchost');
insert into process values(107, 7, 1324, 5020, 0.0, 0, 3176, 'svchost');
insert into process values(208, 12, 2328, 8748, 0.08, 0, 3268, 'svchost');
insert into process values(481, 18, 3632, 12792, 0.56, 0, 3324, 'svchost');
insert into process values(377, 23, 3404, 11708, 0.16, 0, 3384, 'svchost');
insert into process values(141, 7, 1392, 6240, 0.05, 0, 3428, 'svchost');
insert into process values(246, 13, 3272, 11912, 0.31, 0, 3584, 'svchost');
insert into process values(162, 11, 2344, 8476, 0.06, 0, 3664, 'svchost');
insert into process values(240, 13, 3060, 11836, 0.22, 0, 3856, 'svchost');
insert into process values(163, 10, 1848, 7276, 0.27, 0, 4056, 'svchost');
insert into process values(220, 11, 3968, 8036, 0.22, 0, 4256, 'svchost');
insert into process values(140, 9, 1536, 6836, 0.05, 0, 4516, 'svchost');
insert into process values(202, 12, 2160, 9120, 0.08, 0, 4524, 'svchost');
insert into process values(266, 16, 2868, 9428, 0.2, 0, 4616, 'svchost');
insert into process values(279, 20, 2684, 8612, 0.36, 0, 4852, 'svchost');
insert into process values(234, 13, 2900, 11780, 2.61, 0, 5240, 'svchost');
insert into process values(395, 19, 5160, 16196, 4.94, 0, 5256, 'svchost');
insert into process values(458, 25, 5184, 19236, 0.63, 1, 5848, 'svchost');
insert into process values(267, 14, 3628, 16536, 2.83, 0, 6152, 'svchost');
insert into process values(172, 9, 1804, 7664, 0.06, 0, 6192, 'svchost');
insert into process values(372, 19, 4648, 16372, 0.16, 0, 6608, 'svchost');
insert into process values(127, 7, 1324, 5752, 0.06, 0, 6864, 'svchost');
insert into process values(337, 16, 3952, 22192, 0.25, 1, 7000, 'svchost');
insert into process values(269, 14, 3912, 17724, 0.41, 0, 7616, 'svchost');
insert into process values(213, 13, 4308, 13564, 0.78, 0, 7628, 'svchost');
insert into process values(219, 12, 2552, 9336, 0.17, 0, 9156, 'svchost');
insert into process values(192, 15, 6208, 10024, 0.09, 0, 9760, 'svchost');
insert into process values(199, 12, 1752, 7336, 0.03, 0, 10512, 'svchost');
insert into process values(148, 9, 1660, 10552, 0.05, 0, 11116, 'svchost');
insert into process values(3730, 0, 208, 1636, 124.03, 0, 4, 'System');
insert into process values(286, 33, 7112, 16228, 0.59, 1, 5400, 'taskhostw');
insert into process values(767, 37, 38176, 43176, 77.16, 1, 2856, 'Taskmgr');
insert into process values(396, 64, 16672, 18588, 0.95, 0, 3360, 'TeamViewer_Service');
insert into process values(210, 20, 7252, 10300, 0.08, 0, 3004, 'TNSLSNR');
insert into process values(487, 39, 27732, 29056, 28.77, 1, 9848, 'UninstallMonitor');
insert into process values(390, 21, 54888, 32968, 4.72, 0, 3632, 'usocoreworker');
insert into process values(625, 36, 18544, 364, 0.64, 1, 6848, 'Video.UI');
insert into process values(173, 12, 2504, 7088, 0.13, 0, 2100, 'vmnat');
insert into process values(88, 8, 7768, 4748, 0.02, 0, 2264, 'vmnetdhcp');
insert into process values(327, 16, 5760, 10916, 7.69, 0, 3612, 'vmware-authd');
insert into process values(219, 13, 2732, 10332, 0.06, 0, 3368, 'vmware-usbarbitrator64');
insert into process values(539, 38, 51424, 50340, 37.19, 1, 9148, 'WDAppManager');
insert into process values(447, 25, 34672, 37524, 24.33, 1, 1160, 'WDBackupService');
insert into process values(160, 11, 1364, 6196, 0.05, 0, 620, 'wininit');
insert into process values(270, 12, 2780, 11416, 0.11, 1, 720, 'winlogon');
insert into process values(973, 67, 48932, 200, 1.52, 1, 5776, 'WinStore.App');
insert into process values(171, 11, 3700, 9668, 0.11, 0, 8776, 'WmiPrvSE');
insert into process values(183, 12, 4788, 9528, 0.92, 0, 8880, 'WmiPrvSE');
insert into process values(245, 14, 18464, 16664, 0.2, 0, 3052, 'WsAppService3');
insert into process values(697, 47, 25088, 804, 0.56, 1, 7808, 'YourPhone');








-- insert data into task
insert into task values('System Idle Process', 0, 'Services', 0, 8);
insert into task values('System', 4, 'Services', 0, 1636);
insert into task values('Registry', 96, 'Services', 0, 71048);
insert into task values('smss.exe', 408, 'Services', 0, 1044);
insert into task values('csrss.exe', 544, 'Services', 0, 5320);
insert into task values('wininit.exe', 620, 'Services', 0, 6196);
insert into task values('csrss.exe', 628, 'Console', 1, 5176);
insert into task values('winlogon.exe', 720, 'Console', 1, 11416);
insert into task values('services.exe', 764, 'Services', 0, 9096);
insert into task values('lsass.exe', 780, 'Services', 0, 16460);
insert into task values('svchost.exe', 892, 'Services', 0, 3764);
insert into task values('svchost.exe', 912, 'Services', 0, 28068);
insert into task values('fontdrvhost.exe', 936, 'Services', 0, 2924);
insert into task values('fontdrvhost.exe', 944, 'Console', 1, 6736);
insert into task values('svchost.exe', 76, 'Services', 0, 17400);
insert into task values('svchost.exe', 492, 'Services', 0, 7240);
insert into task values('dwm.exe', 520, 'Console', 1, 52032);
insert into task values('svchost.exe', 532, 'Services', 0, 10300);
insert into task values('svchost.exe', 1064, 'Services', 0, 5056);
insert into task values('svchost.exe', 1072, 'Services', 0, 11912);
insert into task values('svchost.exe', 1140, 'Services', 0, 5772);
insert into task values('svchost.exe', 1284, 'Services', 0, 16548);
insert into task values('svchost.exe', 1308, 'Services', 0, 10416);
insert into task values('svchost.exe', 1352, 'Services', 0, 13512);
insert into task values('svchost.exe', 1368, 'Services', 0, 11624);
insert into task values('svchost.exe', 1380, 'Services', 0, 7584);
insert into task values('svchost.exe', 1388, 'Services', 0, 5632);
insert into task values('svchost.exe', 1456, 'Services', 0, 8788);
insert into task values('svchost.exe', 1540, 'Services', 0, 7488);
insert into task values('svchost.exe', 1584, 'Services', 0, 8284);
insert into task values('Memory Compression', 1628, 'Services', 0, 247004);
insert into task values('svchost.exe', 1664, 'Services', 0, 7412);
insert into task values('svchost.exe', 1672, 'Services', 0, 24128);
insert into task values('svchost.exe', 1740, 'Services', 0, 11336);
insert into task values('svchost.exe', 1804, 'Services', 0, 8172);
insert into task values('svchost.exe', 1832, 'Services', 0, 15156);
insert into task values('svchost.exe', 2036, 'Services', 0, 8528);
insert into task values('svchost.exe', 2068, 'Services', 0, 13556);
insert into task values('svchost.exe', 2164, 'Services', 0, 5996);
insert into task values('svchost.exe', 2172, 'Services', 0, 9332);
insert into task values('svchost.exe', 2208, 'Services', 0, 9924);
insert into task values('svchost.exe', 2244, 'Services', 0, 7436);
insert into task values('svchost.exe', 2272, 'Services', 0, 11888);
insert into task values('spoolsv.exe', 2428, 'Services', 0, 12700);
insert into task values('svchost.exe', 2464, 'Services', 0, 20700);
insert into task values('svchost.exe', 2532, 'Services', 0, 16548);
insert into task values('svchost.exe', 2548, 'Services', 0, 7784);
insert into task values('svchost.exe', 2824, 'Services', 0, 26540);
insert into task values('svchost.exe', 2840, 'Services', 0, 5712);
insert into task values('svchost.exe', 2868, 'Services', 0, 18228);
insert into task values('svchost.exe', 2876, 'Services', 0, 30444);
insert into task values('svchost.exe', 2888, 'Services', 0, 13884);
insert into task values('svchost.exe', 2896, 'Services', 0, 6004);
insert into task values('svchost.exe', 2904, 'Services', 0, 5216);
insert into task values('svchost.exe', 2912, 'Services', 0, 7596);
insert into task values('svchost.exe', 2920, 'Services', 0, 21012);
insert into task values('oracle.exe', 2944, 'Services', 0, 17120);
insert into task values('TNSLSNR.EXE', 3004, 'Services', 0, 10300);
insert into task values('nssm.exe', 3040, 'Services', 0, 5868);
insert into task values('WsAppService3.exe', 3052, 'Services', 0, 16664);
insert into task values('vmnat.exe', 2100, 'Services', 0, 7088);
insert into task values('vmnetdhcp.exe', 2264, 'Services', 0, 4748);
insert into task values('sqlwriter.exe', 2592, 'Services', 0, 7680);
insert into task values('Lavasoft.WCAssistant.Win', 2652, 'Services', 0, 41028);
insert into task values('MsMpEng.exe', 3088, 'Services', 0, 175912);
insert into task values('svchost.exe', 3176, 'Services', 0, 5008);
insert into task values('svchost.exe', 3268, 'Services', 0, 8732);
insert into task values('svchost.exe', 3324, 'Services', 0, 12792);
insert into task values('TeamViewer_Service.exe', 3360, 'Services', 0, 18588);
insert into task values('vmware-usbarbitrator64.exe', 3368, 'Services', 0, 10332);
insert into task values('svchost.exe', 3384, 'Services', 0, 11692);
insert into task values('svchost.exe', 3428, 'Services', 0, 6228);
insert into task values('vmware-authd.exe', 3612, 'Services', 0, 11112);
insert into task values('svchost.exe', 4056, 'Services', 0, 7260);
insert into task values('svchost.exe', 4516, 'Services', 0, 6836);
insert into task values('svchost.exe', 4524, 'Services', 0, 9120);
insert into task values('svchost.exe', 4616, 'Services', 0, 9428);
insert into task values('dasHost.exe', 4680, 'Services', 0, 13588);
insert into task values('svchost.exe', 4852, 'Services', 0, 8612);
insert into task values('bitmask_helper.exe', 4892, 'Services', 0, 5996);
insert into task values('svchost.exe', 3036, 'Services', 0, 6932);
insert into task values('NisSrv.exe', 5388, 'Services', 0, 8656);
insert into task values('svchost.exe', 4256, 'Services', 0, 8036);
insert into task values('svchost.exe', 5256, 'Services', 0, 16196);
insert into task values('svchost.exe', 5240, 'Services', 0, 11848);
insert into task values('sihost.exe', 5856, 'Console', 1, 28012);
insert into task values('svchost.exe', 1488, 'Console', 1, 22268);
insert into task values('svchost.exe', 2768, 'Console', 1, 32956);
insert into task values('taskhostw.exe', 5400, 'Console', 1, 16188);
insert into task values('svchost.exe', 6152, 'Services', 0, 16536);
insert into task values('svchost.exe', 6192, 'Services', 0, 7664);
insert into task values('ctfmon.exe', 6288, 'Console', 1, 14140);
insert into task values('explorer.exe', 6516, 'Console', 1, 107044);
insert into task values('svchost.exe', 6608, 'Services', 0, 16372);
insert into task values('GoogleCrashHandler.exe', 6828, 'Services', 0, 1536);
insert into task values('GoogleCrashHandler64.exe', 6840, 'Services', 0, 1080);
insert into task values('svchost.exe', 7000, 'Console', 1, 22180);
insert into task values('StartMenuExperienceHost.exe', 6512, 'Console', 1, 54704);
insert into task values('RuntimeBroker.exe', 6852, 'Console', 1, 22904);
insert into task values('SearchUI.exe', 7240, 'Console', 1, 89664);
insert into task values('SearchIndexer.exe', 7296, 'Services', 0, 40476);
insert into task values('RuntimeBroker.exe', 7420, 'Console', 1, 39460);
insert into task values('svchost.exe', 7616, 'Services', 0, 17724);
insert into task values('YourPhone.exe', 7808, 'Console', 1, 800);
insert into task values('SettingSyncHost.exe', 7836, 'Console', 1, 20448);
insert into task values('RuntimeBroker.exe', 8136, 'Console', 1, 25860);
insert into task values('svchost.exe', 5848, 'Console', 1, 19236);
insert into task values('igfxtray.exe', 8668, 'Console', 1, 8472);
insert into task values('hkcmd.exe', 8748, 'Console', 1, 8368);
insert into task values('igfxpers.exe', 8784, 'Console', 1, 9444);
insert into task values('flux.exe', 8820, 'Console', 1, 21284);
insert into task values('WmiPrvSE.exe', 8880, 'Services', 0, 9528);
insert into task values('googledrivesync.exe', 8932, 'Console', 1, 3440);
insert into task values('jusched.exe', 9088, 'Console', 1, 14908);
insert into task values('WDAppManager.exe', 9148, 'Console', 1, 50340);
insert into task values('WDBackupService.exe', 1160, 'Console', 1, 37524);
insert into task values('conhost.exe', 1212, 'Console', 1, 6312);
insert into task values('googledrivesync.exe', 3480, 'Console', 1, 41748);
insert into task values('svchost.exe', 3584, 'Services', 0, 11912);
insert into task values('usocoreworker.exe', 3632, 'Services', 0, 32988);
insert into task values('ShellExperienceHost.exe', 7084, 'Console', 1, 60668);
insert into task values('RuntimeBroker.exe', 8988, 'Console', 1, 15872);
insert into task values('ApplicationFrameHost.exe', 1320, 'Console', 1, 27608);
insert into task values('WinStore.App.exe', 5776, 'Console', 1, 196);
insert into task values('RuntimeBroker.exe', 3136, 'Console', 1, 23836);
insert into task values('svchost.exe', 3856, 'Services', 0, 11836);
insert into task values('svchost.exe', 6864, 'Services', 0, 5752);
insert into task values('svchost.exe', 7628, 'Services', 0, 13564);
insert into task values('SgrmBroker.exe', 8840, 'Services', 0, 6144);
insert into task values('svchost.exe', 9156, 'Services', 0, 9328);
insert into task values('Calculator.exe', 1748, 'Console', 1, 320);
insert into task values('RuntimeBroker.exe', 6908, 'Console', 1, 7892);
insert into task values('chrome.exe', 5708, 'Console', 1, 216472);
insert into task values('chrome.exe', 4512, 'Console', 1, 6452);
insert into task values('chrome.exe', 7872, 'Console', 1, 131464);
insert into task values('chrome.exe', 5688, 'Console', 1, 43780);
insert into task values('chrome.exe', 4580, 'Console', 1, 16716);
insert into task values('chrome.exe', 2120, 'Console', 1, 29308);
insert into task values('chrome.exe', 4424, 'Console', 1, 30736);
insert into task values('chrome.exe', 9028, 'Console', 1, 126140);
insert into task values('chrome.exe', 6708, 'Console', 1, 32600);
insert into task values('chrome.exe', 3240, 'Console', 1, 29780);
insert into task values('chrome.exe', 3600, 'Console', 1, 45116);
insert into task values('chrome.exe', 9224, 'Console', 1, 29420);
insert into task values('chrome.exe', 9520, 'Console', 1, 48708);
insert into task values('chrome.exe', 9708, 'Console', 1, 17564);
insert into task values('chrome.exe', 3776, 'Console', 1, 246700);
insert into task values('chrome.exe', 10164, 'Console', 1, 43432);
insert into task values('UninstallMonitor.exe', 9848, 'Console', 1, 29056);
insert into task values('firefox.exe', 9876, 'Console', 1, 410176);
insert into task values('SecurityHealthService.exe', 8960, 'Services', 0, 11992);
insert into task values('firefox.exe', 9084, 'Console', 1, 268388);
insert into task values('firefox.exe', 10408, 'Console', 1, 184596);
insert into task values('firefox.exe', 10676, 'Console', 1, 108564);
insert into task values('firefox.exe', 10944, 'Console', 1, 60528);
insert into task values('firefox.exe', 8608, 'Console', 1, 132828);
insert into task values('MusNotifyIcon.exe', 484, 'Console', 1, 24532);
insert into task values('svchost.exe', 11128, 'Console', 1, 21968);
insert into task values('svchost.exe', 11116, 'Services', 0, 10552);
insert into task values('firefox.exe', 10884, 'Console', 1, 136788);
insert into task values('chrome.exe', 9120, 'Console', 1, 66344);
insert into task values('firefox.exe', 11692, 'Console', 1, 117496);
insert into task values('firefox.exe', 4016, 'Console', 1, 89740);
insert into task values('firefox.exe', 880, 'Console', 1, 77132);
insert into task values('PubMonitor.exe', 11316, 'Console', 1, 19388);
insert into task values('jucheck.exe', 11136, 'Console', 1, 14440);
insert into task values('cmd.exe', 6080, 'Console', 1, 3872);
insert into task values('conhost.exe', 1964, 'Console', 1, 13916);
insert into task values('Taskmgr.exe', 2856, 'Console', 1, 43140);
insert into task values('Microsoft.Photos.exe', 2288, 'Console', 1, 32812);
insert into task values('RuntimeBroker.exe', 8972, 'Console', 1, 30164);
insert into task values('dllhost.exe', 7008, 'Console', 1, 10576);
insert into task values('powershell.exe', 4664, 'Console', 1, 51412);
insert into task values('conhost.exe', 3020, 'Console', 1, 13856);
insert into task values('Video.UI.exe', 6848, 'Console', 1, 348);
insert into task values('RuntimeBroker.exe', 6764, 'Console', 1, 7008);
insert into task values('svchost.exe', 2496, 'Services', 0, 11644);
insert into task values('svchost.exe', 10512, 'Services', 0, 7336);
insert into task values('svchost.exe', 9760, 'Services', 0, 10024);
insert into task values('firefox.exe', 11780, 'Console', 1, 109144);
insert into task values('CompPkgSrv.exe', 3588, 'Console', 1, 8768);
insert into task values('svchost.exe', 10020, 'Services', 0, 12284);
insert into task values('firefox.exe', 4484, 'Console', 1, 168952);
insert into task values('firefox.exe', 632, 'Console', 1, 25852);
insert into task values('chrome.exe', 10656, 'Console', 1, 23124);
insert into task values('audiodg.exe', 2544, 'Services', 0, 7616);
insert into task values('tasklist.exe', 1708, 'Console', 1, 8768);
insert into task values('WmiPrvSE.exe', 8776, 'Services', 0, 9044);




-- insert into network
insert into network values('TCP', '127.0.0.1:49702', '127.0.0.1:53320', 'ESTABLISHED', 6516);
insert into network values('TCP', '127.0.0.1:49799', '127.0.0.1:49800', 'ESTABLISHED', 9876);
insert into network values('TCP', '127.0.0.1:49800', '127.0.0.1:49799', 'ESTABLISHED', 9876);
insert into network values('TCP', '127.0.0.1:49806', '127.0.0.1:49807', 'ESTABLISHED', 10676);
insert into network values('TCP', '127.0.0.1:49807', '127.0.0.1:49806', 'ESTABLISHED', 10676);
insert into network values('TCP', '127.0.0.1:49819', '127.0.0.1:49820', 'ESTABLISHED', 10944);
insert into network values('TCP', '127.0.0.1:49820', '127.0.0.1:49819', 'ESTABLISHED', 10944);
insert into network values('TCP', '127.0.0.1:49827', '127.0.0.1:49828', 'ESTABLISHED', 8608);
insert into network values('TCP', '127.0.0.1:49828', '127.0.0.1:49827', 'ESTABLISHED', 8608);
insert into network values('TCP', '127.0.0.1:50104', '127.0.0.1:50105', 'ESTABLISHED', 11692);
insert into network values('TCP', '127.0.0.1:50105', '127.0.0.1:50104', 'ESTABLISHED', 11692);
insert into network values('TCP', '127.0.0.1:52729', '127.0.0.1:52730', 'ESTABLISHED', 11780);
insert into network values('TCP', '127.0.0.1:52730', '127.0.0.1:52729', 'ESTABLISHED', 11780);
insert into network values('TCP', '127.0.0.1:53320', '127.0.0.1:49702', 'ESTABLISHED', 5688);
insert into network values('TCP', '127.0.0.1:54817', '127.0.0.1:54818', 'ESTABLISHED', 5224);
insert into network values('TCP', '127.0.0.1:54818', '127.0.0.1:54817', 'ESTABLISHED', 5224);
insert into network values('TCP', '127.0.0.1:54821', '127.0.0.1:54822', 'ESTABLISHED', 5224);
insert into network values('TCP', '127.0.0.1:54822', '127.0.0.1:54821', 'ESTABLISHED', 5224);
insert into network values('TCP', '127.0.0.1:55656', '127.0.0.1:55657', 'ESTABLISHED', 2356);
insert into network values('TCP', '127.0.0.1:55657', '127.0.0.1:55656', 'ESTABLISHED', 2356);
insert into network values('TCP', '127.0.0.1:55658', '127.0.0.1:55659', 'ESTABLISHED', 2356);
insert into network values('TCP', '127.0.0.1:55659', '127.0.0.1:55658', 'ESTABLISHED', 2356);
insert into network values('TCP', '127.0.0.1:59249', '127.0.0.1:59250', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59250', '127.0.0.1:59249', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59251', '127.0.0.1:59252', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59252', '127.0.0.1:59251', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59253', '127.0.0.1:59254', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59254', '127.0.0.1:59253', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59303', '127.0.0.1:59304', 'ESTABLISHED', 14204);
insert into network values('TCP', '127.0.0.1:59304', '127.0.0.1:59303', 'ESTABLISHED', 14204);
insert into network values('TCP', '192.168.1.47:1521', '192.168.1.47:53314', 'ESTABLISHED', 3004);
insert into network values('TCP', '192.168.1.47:53301', '52.25.31.211:443', 'ESTABLISHED', 9876);
insert into network values('TCP', '192.168.1.47:53314', '192.168.1.47:1521', 'ESTABLISHED', 2944);
insert into network values('TCP', '192.168.1.47:53318', '52.139.250.253:443', 'ESTABLISHED', 2920);
insert into network values('TCP', '192.168.1.47:53324', '192.241.241.147:443', 'ESTABLISHED', 5688);
insert into network values('TCP', '192.168.1.47:54833', '52.202.62.252:443', 'ESTABLISHED', 5224);
insert into network values('TCP', '192.168.1.47:54838', '3.235.82.198:443', 'ESTABLISHED', 5224);
insert into network values('TCP', '192.168.1.47:55662', '3.80.20.200:443', 'CLOSE_WAIT', 2356);
insert into network values('TCP', '192.168.1.47:59239', '74.125.68.189:443', 'ESTABLISHED', 9876);
insert into network values('TCP', '192.168.1.47:59240', '142.250.4.188:5228', 'ESTABLISHED', 5688);
insert into network values('TCP', '192.168.1.47:59307', '23.207.130.48:443', 'CLOSE_WAIT', 14204);
insert into network values('TCP', '192.168.1.47:59418', '3.235.82.213:443', 'CLOSE_WAIT', 5224);
insert into network values('TCP', '192.168.1.47:59535', '198.252.206.25:443', 'ESTABLISHED', 5688);
insert into network values('TCP', '192.168.1.47:59622', '74.125.200.139:443', 'ESTABLISHED', 9876);
insert into network values('TCP', '192.168.1.47:59633', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59634', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59635', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59636', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59637', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59638', '174.129.130.87:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59640', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59643', '104.16.126.175:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59644', '13.35.15.16:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59649', '13.227.255.18:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59651', '13.35.13.63:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59652', '52.84.95.108:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59653', '52.84.95.108:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59654', '13.227.255.69:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59655', '13.227.241.71:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59657', '103.43.90.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59658', '13.228.18.140:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59659', '35.244.220.155:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59661', '74.214.196.140:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59665', '74.214.196.140:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59670', '104.16.68.69:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59671', '35.213.89.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59672', '3.1.158.52:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59673', '52.74.13.196:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59678', '52.74.13.196:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59680', '103.229.10.228:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59683', '52.76.219.219:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59684', '34.120.155.137:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59687', '74.125.68.121:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59689', '106.10.218.43:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59690', '64.38.119.27:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59692', '18.136.77.75:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59693', '74.214.196.140:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59696', '35.227.202.26:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59697', '52.193.121.3:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59698', '172.67.13.182:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59699', '52.76.219.219:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59700', '3.1.158.52:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59701', '141.226.231.48:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59703', '35.190.60.146:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59705', '103.231.98.194:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59706', '139.162.23.100:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59707', '103.43.90.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59708', '50.116.239.135:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59709', '161.117.111.214:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59715', '54.150.10.110:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59716', '74.214.196.140:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59720', '64.38.119.27:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59725', '35.213.89.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59728', '13.227.255.121:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59729', '107.178.254.65:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59730', '3.229.46.71:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59736', '103.43.90.181:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59738', '69.173.159.45:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59739', '104.16.92.60:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59740', '35.213.34.135:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59741', '3.0.233.152:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59742', '103.229.205.253:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59746', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59749', '52.41.149.43:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59750', '52.41.149.43:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59752', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59753', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59754', '130.211.23.194:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59757', '103.231.98.193:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59767', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59768', '104.18.188.55:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59771', '103.43.90.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59772', '103.43.90.114:443', 'TIME_WAIT', 0);
insert into network values('TCP', '192.168.1.47:59776', '20.44.232.74:443', 'ESTABLISHED', 1488);
insert into network values('TCP', '[::1]:59256', '[::1]:59257', 'ESTABLISHED', 14204);
insert into network values('TCP', '[::1]:59257', '[::1]:59256', 'ESTABLISHED', 14204);


--commit 
commit;

--Display all data from three databases

select * from process;
select * from task;
select * from network;













