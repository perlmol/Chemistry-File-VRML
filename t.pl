#!/home/ivan/bin/perl

use strict;
use warnings;
use lib 'lib';
use Chemistry::File::PDB;
use Chemistry::File::VRML;
use diagnostics;

my $mol = Chemistry::Mol->read('test.pdb');

#my $pdb = $mol->file('xxx', format => 'vrml');
##$pdb->add_mol($mol);
#$pdb->open('>');
#$pdb->write_mol($pdb->fh, $mol);
#$pdb->centerAtoms();
#$pdb->genBonds();
#$pdb->setStyle('BallAndWire');
#$pdb->setColor('byAtom');	# default

print $mol->print(format => 'vrml', centerAtoms => 1);
