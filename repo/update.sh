rm Packages
./dpkg-scanpackages packages /dev/null > Packages
rm Packages.gz
rm Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2
read -n1 -r -p "Press any key to continue to upload to github..." key
git add -A
git commit -m "update `date +%Y-%m-%d:%H:%M:%S`"
git push -u origin master
