# Reset Password

https://help.resilio.com/hc/en-us/articles/205450295-How-do-I-reset-my-WebUI-password-



Sync's WebUI is protected with login/password, that you define when first opening WebUI. It's not your user account's password and it's not related to any other accounts that you might have. This is just a protection against unauthorised access to Sync WebUI solely. 

If you've lost/forgotten your WebUI password, you can manually remove login & password settings in the Sync storage folder. Please note that it will lead to device duplication in the "My devices" list.To reset login and password settings, follow these steps:

1) Quit Sync and close WebUI.
2) Go to the Sync storage folder.
3) Locate and remove the following files:
 
settings.dat
settings.dat.old

## Sync Storeage folders

 DESKTOP 
Windows: 
C:\Users\user_name\AppData\Roaming\Resilio Sync\ 
(will be Resilio Sync Service if you run Sync as service)

Sync running as service with LocalService: 
C:\Windows\ServiceProfiles\LocalService\AppData\Roaming\Resilio Sync Service 
Sync running as service with Local System: 
C:\Windows\System32\config\systemprofile\AppData\Roaming\Resilio Sync Service

Mac: /Users/user_name/Library/Application Support/Resilio Sync 

Linux: ./sync near binary file or the current directory from which you launch Sync, or the path defined as "storage_path" if you run Sync in config mode

Linux packages: 
/var/lib/resilio-sync if launched as default rslsync user. 
/home/username/.config/resilio-sync/storage if launched as current user.

 


 MOBILE 
Android  (root required): /data/data/com.resilio.sync/files/.sync
 

 NAS 
Synology NAS: /usr/local/resiliosync/var/ 

Netgear ReadyNAS:/apps/resilio-sync/config

QNAP: /share/HDA_DATA/.qpkg/ResilioSync/storage where instead of HDA_DATA, it may be MD0_DATA, HDB_DATA, ...

Seagate:/media/internal_1/rainbow/resilio-sync-xxxxxxxx/data/.sync Note that "xxxxxxx" after "resilio-sync-" stand for the container ID which is generated randomly, so it'll be different on each NAS. Also, instead of 'internal_1" you may have "internal_2", etc. based on naming convention.

Overland Storage: /hd/vol_mntX/btsync (where "X" is some number, most likely 0).

Drobo: /mnt/DroboFS/Shares/DroboApps/ResilioSync/data

Western Digital NAS: /mnt/HD/HD_a2/Nas_Prog/ResilioSync/settings/

AsuStor:/volume1/.@plugins/AppCentral/resilio-sync/app/.sync/

If NAS model is unknown: find / -name settings.dat.old | grep settings.dat.old 



