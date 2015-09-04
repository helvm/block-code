#!/usr/bin/perl

use strict;
use warnings;

binmode STDOUT, ":utf8";
use utf8;

use JSON::Parse 'json_file_to_perl';
#use JSON;
use XML::Simple;
use YAML::Tiny;
use XML::XSLT;

sub get_json {
    my $name = shift @_;
# Read input file in json format
    my $json;
    {
        local $/; #Enable 'slurp' mode
        open my $fh, "<", $name.".js";
        $json = <$fh>;
        close $fh;
    }
# Convert JSON format to perl structures
    my $data = decode_json($json);
    return $data;
}


sub print_to_file {
    my ($path, $value) = @_;
    open (my $fh, '>', $path) or die "open($path): $!";
    print $fh $value;
    close $fh;

}

sub ml {
    my $name = shift @_;
    my $path = '../js/' . $name;
    my $path_xml = $path .'.xml';

    my $data = json_file_to_perl ($path.'.js');
    my $xml = XMLout($data);
    open my $fh, '>:encoding(iso-8859-1)', $path_xml or die "open($path_xml): $!";
    XMLout($data, OutputFile => $fh);

    YAML::Tiny::DumpFile($path. '.yml', $data);

    my $path_xsl = '../conf/' . 'copy2.xml';
    my $xsl = XMLin($path_xsl);
#    my $xslt = XML::XSLT->new ($xsl, warnings => 1);
    my $xslt = XML::XSLT->new ($path_xsl);
    $xslt->transform ($path_xml);
    my $copied = $xslt->toString;
    $xslt->dispose();

    print_to_file ('report.txt', $copied);
}

sub block_code {
    my $name = shift @_;
    my $path = '../js/' . $name;

    my $data = json_file_to_perl ($path.'.js');



}

block_code('hw');
block_code('tpk');

