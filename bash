if (git remote|grep '^github$') ;then echo "hi";fi

i="-4" ;while (( $i)); do echo $i;i=$(($i+2));echo hi;done
i="-4" ;while (( $i -lt 0)); do echo $i;i=$(($i+2));echo hi;done
i="-4" ;while (( $i -gt 0)); do echo $i;i=$(($i+2));echo hi;done
i="-4" ;while (( $i < 0)); do echo $i;i=$(($i+2));echo hi;done

#looping through files with spaces in the filenames in bash
# basically use 'while read VAR' instead of 'for VAR in ``'
find . |while read file; do scp "$file" 172.16.1.1:; done


* Sort the password file on the fifth field and ignore any leading
  blanks.  Sort lines with equal values in field five on the numeric
  user ID in field three.  Fields are separated by `:'.

          sort -t : -k 5b,5 -k 3,3n /etc/passwd
if (test "Linux" = `uname`); then echo "hi"; fi

if [ -e "phennyx" ]; then echo hi; elif [ -e "z" ]; then echo boo; fi

regex conditional
if [[ "foo.html" =~ ".html" ]] ; then echo hi; fi

2>&1 to pipe standard error to stdout



find . -type f -name "*.log" -print0 | xargs -0 -P4 nice gzip -9
#^^^ uses all the cores and nices them to run the process

for i in {1..5}; do echo $i; done
