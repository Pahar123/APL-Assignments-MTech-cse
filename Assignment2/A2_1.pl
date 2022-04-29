#!/usr/bin/perl
open(FILE, "A2.html");
read (FILE, $c, -s "A2.html");
close(FILE);
@links = $c =~ /href="(https:|http:)/gis;
for (@links){
     if ($_ =~ /^http/) {
        ;
    }
    else {
        print("$_", "\n"); 
    }
}
$c =~ s/href="(https:|http:)//gis;
open(OUT, ">", "out.html");
print OUT $c;
close(OUT);









