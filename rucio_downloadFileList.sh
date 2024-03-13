read -e -p "Enter rule list location: " rulelist
read -e -p "Enter target directory: " targetdir

cd $targetdir
cat $rulelist | while read line
do
    if [ ! "$line" ]; then continue; fi
    echo "RUCIO-DOWNLOAD-FILELIST -- Downloading " $line
    rucio download --ndownloader 5 $line
done
