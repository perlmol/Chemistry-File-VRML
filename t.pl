#!/home/ivan/bin/perl

use strict;
use warnings;
use lib 'lib';
use Chemistry::File::PDB;
use Chemistry::File::VRML;
use Chemistry::Bond::Find 'find_bonds';
use diagnostics;

my $mol = Chemistry::Mol->read('test.pdb');
#find_bonds($mol, orders => 1);
print $mol->print(format => 'vrml', 
    center => 1,
    style  => 'ballAndWire',
    color  => 'byAtom',
);
$mol->write('xyz.wrl', format => 'vrml', 
    center => 1,
    style  => 'ballAndWire',
    color  => 'byAtom',
);
