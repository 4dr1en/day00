awk -F ',' '$2 == "Remote" && $5 == "PHP"' it_alumni.csv | wc -l > php_remote_2019.csv

awk -F ',' '$2 == "Charbonnieres" || $2 == "Villeurbanne"' it_alumni.csv > javascript_villeurbanne_charbonnieres.csv

awk -F ',' '$3 == "David" || $4 == "David"' it_alumni.csv | wc -l > david.csv

awk -F ',' '{if($2 == "Gex") print $6}' it_alumni.csv > mails_gex.csv

awk -F ',' '{if($2 == "Charbonnieres" || $2 == "Remote") print $6}' it_alumni.csv > mails_charbonnieres_remote.csv

awk -F ',' '$1 == "2008" && $5 == "Python"' it_alumni.csv | wc -l > mails_charbonnieres_remote.csv
