#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

@ARGV == 2 or die "Usage: perl $0 net.txt dir_resp\n";
my $file_net = $ARGV[0];
my $dir_resp = $ARGV[1];


# ------------------------ 获取台站、文件句柄信息 ------------------------ #
my $file_lsresp='lsresp.txt';
system "touch $file_lsresp";
open (A,'<',$file_net) or die "Could not open file '$file_net' $!";
open (B,'>>',$file_lsresp) or die "Could not open file '$file_lsresp' $!";
print B "net.sta\tBH\tSH\tBS\n";
my @net_sta=<A>;
my $l=$#net_sta;
# ------------------------------------------------------------------------ #


# ------------ 从仪器响应目录中获取所有仪器响应文件信息 --------- #
# 适用于CSNPZ类型的仪器响应目录
chdir $dir_resp;
my @BHE=<*.BHE.sacpz>;
my @BHN=<*.BHN.sacpz>;
my @BHZ=<*.BHZ.sacpz>;
my @SHE=<*.SHE.sacpz>;
my @SHN=<*.SHN.sacpz>;
my @SHZ=<*.SHZ.sacpz>;
chdir "..";
# --------------------------------------------------------------- #


# ------------------------ 开始判断 ------------------------ #
foreach (0..$l){
    chomp($net_sta[$_]);
    my ($net,$sta,$long,$lat)=split(/\s+/,$net_sta[$_]);
    my $temp1="$net.$sta";
    my $temp2=grep /^$temp1/,@BHE;
    my $temp3=grep /^$temp1/,@BHN;
    my $temp4=grep /^$temp1/,@BHZ;
    my $temp5=grep /^$temp1/,@SHE;
    my $temp6=grep /^$temp1/,@SHN;
    my $temp7=grep /^$temp1/,@SHZ;
    my $temp8=$temp2+$temp3+$temp4;
    my $temp9=$temp5+$temp6+$temp7;
    my $temp10=$temp8+$temp9;
    print B "$temp1\t$temp8\t$temp9\t$temp10\n";
    say "$_/$l";
}
# ---------------------------------------------------------- #

close (A);
close (B);
say "done!";
