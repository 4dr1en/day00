
rm javascript_villeurbanne_charbonnieres.csv
rm mails_gex.csv
rm mails_charbonnieres_remote.csv
alumnisPhpRemote=0
alumnisPython=0
alumnisDavid=0

cat it_alumni.csv | while read line; do
    
    line=$(echo $line | tr "," " ")
    arr=($line)

    promotion=${arr[0]}
    campus=${arr[1]}
    firstname=${arr[2]}
    lastname=${arr[3]}
    lang=${arr[4]}
    mail=${arr[5]}

    
    if [[ "$lang" == "PHP" && "$campus" == "Remote" ]]; then
        ((alumnisPhpRemote+=1))
        echo $alumnisPhpRemote > php_remote_2019.csv
    fi
    
    if [[ "$lang" == "Js" && ("$campus" == "Charbonnieres" || "$campus" == "Villeurbanne")]]; then
        echo $line >> javascript_villeurbanne_charbonnieres.csv
    fi

    if [[ "$firstname" == "David" || "$lastname" == "David" ]]; then
        ((alumnisDavid+=1))
        echo $alumnisDavid > david.csv
    fi
    
    if [[ "$campus" == "Gex" ]]; then
        echo $mail >> mails_gex.csv
    elif  [[ "$campus" == "Remote" || "$campus" == "Charbonnieres" ]]; then
        echo $mail >> mails_charbonnieres_remote.csv
    fi

    if [[ "$lang" == "Python" ]]; then
        ((alumnisPython+=1))
        echo $alumnisPython > python_2008.csv
    fi
done

