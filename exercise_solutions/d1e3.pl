#print peptide
@peptide = qw(Phe Val Asn Gln His Leu Cys Gly Ser); #assign values to array
print "Peptide: @peptide\n";

#report length
$aalength=scalar(@peptide);
print "The polypeptide consists of $aalength aminoacids.\n";

#Add His at the end of the sequence
push (@peptide, His);
print "Peptide with added His at the end: @peptide \n";

#Replace Gly (index position 7) with Asp 
$peptide[7]='Asp';
print "Gly replaced with Asp: @peptide \n";

#get amino acid at user provided position
print "Enter a number between 1 and $aalength: ";
$aaindex=<STDIN>; #read from keyboard
chomp $aaindex; #remove trailing newline
print "The aa at position $aaindex is $peptide[$aaindex-1]\n";

print "Start of inversion: ";
$start=<STDIN>;
chomp $start;
$start-=1;
print "End of the inversion: ";
$end=<STDIN>;
chomp $end;
$end-=1;

$peptide_len=scalar(@peptide);
@peptide_with_inversion =(@peptide[0..$start-1],reverse(@peptide[$start..$end]),@peptide[$end+1..$peptide_len-1]); #make new array with inversion and flanking seq
print('peptide with inverson: ',@peptide_with_inversion,"\n");

#format output
foreach $aa (@peptide_with_inversion) {
      $formatted_peptide .= "$aa-"; #concatenate to new string
}
chop $formatted_peptide; #remove trailing -
print "$formatted_peptide \n";
