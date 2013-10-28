#!/usr/bin/perl
use POSIX qw(strftime);
use Term::ReadKey;
use Cwd;
my $base_dir=getcwd;;
print "$base_dir\n";
 my $dir = getcwd;
print "$dir\n";
$bin_dir = "$base_dir/WP8Launcher_code/WP8Launcher/dist";

if(-e $bin_dir){
print "1.dele old wp8Launcher...\n";
system("rm -rf  $bin_dir");
}
print "2.recreate wp8Launcher...\n";
chdir "$base_dir/apk_jar";
system("apktool.jar b $base_dir/WP8Launcher_code/WP8Launcher ");
print "3.rename wp8Launcher...\n";
chdir $bin_dir;
system("mv WP8Launcher.apk WP8LauncherSrc.apk");
print "4.signapk wp8Launcher...\n";
chdir "$base_dir/apk_jar";
system("signapk.jar platform.x509.pem platform.pk8 $bin_dir/WP8LauncherSrc.apk $bin_dir/WP8Launcher.apk");
if (-e "$bin_dir/WP8LauncherSrc.apk"){
print "5.del no sign wp8Launcher...\n";
system("rm $bin_dir/WP8LauncherSrc.apk");
} 
chdir $base_dir;