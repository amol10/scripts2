#!/bin/bash

url=$1

if [[ ! -z "$url" ]]
then
    echo getting page...
    curl $url >tmp.html
fi

title=
hash=
skip=0
no1="1037"
no2="1051"
url_base="https://audiomicro-sources.s3.amazonaws.com/preview/"

grep -P "tracks.download|media-title" tmp.html | while read -r line
do
    if [ $skip -eq 1 ]
    then
        skip=0
        continue
    fi
    if [[ -z "$title" ]]
    then
        title=$(echo $line | grep -Po ">.*<" | sed -e 's/[><]//g' | tr [A-Z] [a-z] | tr " " "_")
        echo $title
        continue
    fi

    if [[ -z "$hash" ]]
    then
        hash=$(echo $line | grep -Po "d/.*?/wav" | sed -e 's/d\///' | sed -e 's/\/wav//')
        echo $hash

        url="${url_base}${no1}/${hash}"
        echo $url
        path="sounds/${title}.mp3"

        if [[ -f "$path" ]]
        then
            echo file exists, skipping...
        else
            curl $url >$path
            grep "Access Denied" $path
            if [ $? -eq 0 ]
            then
                url="${url_base}${no2}/${hash}"
                echo $url
                curl $url >$path
            fi
        fi

        title=
        hash=
        skip=1
    fi
    #echo $line
    
done