#! /usr/local/bin/perl

use strict;
use warnings;
use Data::Dumper;

print "### True_Bits ###\n";

sub true_bits{
    my $integer = shift;
    my $binary;
    my @array;

    #---------------------------#
    # Convert integer to binary
    #---------------------------#
    $binary = sprintf("%b", $integer);

    #---------------------------#
    # Find 1s from the end of the string
    # And store index in array
    #---------------------------#
    my $offset = -1;
    for(my $i=0; $i<length($binary); $i++){
        #print "substr $i: ", substr($binary, $offset-$i, 1)."\n";
        if(substr($binary, $offset-$i, 1)){
        push @array, $i;
        }
    }
    #print "@array\n";
    return \@array;
}

MAIN:{
    #true_bits(64);
    #true_bits(983280);
    my $result = true_bits(983280);
    print "RESULT: @$result\n";
    #return @$result;
}
1;

__END__
