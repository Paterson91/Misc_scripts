#Isolate FROM - UNTIL, then pipe to remove UNTIL hit (use sed '1d;$d' to remove FROM hit AND UNTIL hit)
sed -n '/>Chr01/,/>Chr02/p' Apple_HFTH1_BWAdb/Apple-HFTH1-genome.fa | sed '$d'
