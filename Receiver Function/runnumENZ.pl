#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

@ARGV == 1 or die "Usage: perl $0 net.txt\n";
my $file_net=$ARGV[0];

# ----------------------------- select file handle. ------------------------------- #
open (A,'<',$file_net) or die "Could not open file '$file_net' $!";
my @net_sta=<A>;
my $length=$#net_sta;
# --------------------------------------------------------------------------------- #

say "begin!";

# ---------------------------- pre -------------------------------------- #
system "touch numENZ.txt";
my $file_numENZ='numENZ.txt';
open (A,'>>',$file_numENZ) or die "Could not open file '$file_numENZ' $!";
print A "net.sta\tE\tn\tZ\t=?\n";
close (A);
# ----------------------------------------------------------------------- #

foreach (0..$length){
    chomp($net_sta[$_]);
    my ($net,$sta,$long,$lat)=split(/\s+/,$net_sta[$_]);
    system "perl numENZ.pl $net.$sta";
    say "$_/$length";
}

say "done!";
