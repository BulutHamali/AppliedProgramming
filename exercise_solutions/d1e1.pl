#!/usr/bin/perl

=head 1 Day 1 Exercise 1

 Calculate the molecular weight in kDa of a protein consisting of 671 aa,
 assuming an average weight per aa of 110 Da

=cut

$aaCount = 671;
$aaAvgWeight = 110;
$molweight = $aaCount * $aaAvgWeight; #weight in Da
$molweight /= 1000; #convert to kDa
print "The molecular weight for a protein of $aaCount aa is $molweight kDa.\n";
