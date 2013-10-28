DEL /s /q WP8Launcher_code\WP8Launcher\dist\WP8Launcher.apk
rem DEL /s /q WP8Launcher_code\WP8Launcher\dist\WP8LauncherSrc.apk


apk_jar\apktool.jar b WP8Launcher_code\WP8Launcher
cd WP8Launcher_code\WP8Launcher\dist
rename WP8Launcher.apk  WP8LauncherSrc.apk
java -jar ..\..\..\apk_jar\signapk.jar ..\..\..\apk_jar\platform.x509.pem ..\..\..\apk_jar\platform.pk8 WP8LauncherSrc.apk WP8Launcher.apk
DEL  /s /q WP8LauncherSrc.apk 