#!/usr/bin/perl

use strict;
use warnings;

my $t = time;

open(my $f, "/home/falconzwei/cursosplatzi/learning/web/js/JsAvanzado/expresiones-regulares/lenguajesprogramacion/Perl/files/results.csv") or die ("no hay archivo");

my $match   = 0;
my $nomatch = 0;

# Esta expreción regular es para buscar partidos

while(<$f>){
    chomp;
    if(m/^([\d]{4,4})\-.*?,(.*?),(.*?),(\d+),(\d+).*$/){
        if($5 > $4){
            printf("%s: %s (%d) - (%d) %s\n",
            $1, $2, $4, $5, $3
            );
        }
        $match++;
    }else{
        $nomatch++;
    }
}

close($f);

printf("Se encontraron: \n - %d matches\n - %d no matches\n tardo %d segundos\n" , $match, $nomatch, time() - $t);