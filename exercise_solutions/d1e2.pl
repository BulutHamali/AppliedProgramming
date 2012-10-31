#!/usr/bin/perl -w

=head1 Day 1 Exercise 2
 Input: Gene name, nucleotide count of a CDS
 Output: Molecular weight of translated peptide (here assuming divisibility by 3)
=cut

$avgMolWeight=110;
($geneName,$nuclLen) = @ARGV;

#calculate nr of aa (assuming the user input a number divisible by 3)
$aaLen = $nuclLen/3;
$molWeight = $aaLen * $avgMolWeight;
$molWeight/=1000;

print "$geneName consists of $aaLen aminoacids and has an estimated molecular weight of $molWeight kDa.\n";
