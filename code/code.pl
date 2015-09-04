#!/usr/bin/perl

use strict;
use warnings;

binmode STDOUT, ":utf8";
use utf8;

use JSON::Parse 'json_file_to_perl';
use Data::Dumper;
use VisitorStmt;

sub block_code
{
    my $name = shift;
    my $path = '../js/' . $name;

    my $data = json_file_to_perl ($path.'.js');

    dump_to_file ($name, $data);

    my $visitor = VisitorStmt->new();
    #$visitor->open_file ($path . '.tcl');
    #$visitor->visit ($data);
    #$visitor->close_file ();
    $visitor->stmt($data, $path . '.tcl');
}

sub dump_to_file
{
    my $name = shift;
    my $data = shift;
    open my $FH, '>', '../js/'. $name . '.pl';
    print $FH Dumper($data);
    close $FH;
}

block_code('hw');
#block_code('tpk');

