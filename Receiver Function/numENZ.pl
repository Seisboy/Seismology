#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

@ARGV == 1 or die "Usage: perl $0 dirname\n";
my ($dir) = $ARGV[0];
chdir $dir;

#------------get file name------------#
my @files_E=<*.SAC.E>;
my @files_N=<*.SAC.N>;
my @files_Z=<*.SAC.Z>;
my $lE=$#files_E;
my $lN=$#files_N;
my $lZ=$#files_Z;
my $nE=$lE+1;
my $nN=$lN+1;
my $nZ=$lZ+1;
my $temp;
chdir "..";
#-------------------------------------#

if ( $nE==$nN && $nE==$nZ ){
    $temp=1;
}else{
    $temp=0;
}

my $file_numENZ='numENZ.txt';
open (A,'>>',$file_numENZ) or die "Could not open file '$file_numENZ' $!";
print A "$dir\t$nE\t$nN\t$nZ\t$temp\n";
close (A);
