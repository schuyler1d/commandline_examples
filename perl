regex inplace
perl -pi -e's|href="(?!http:)([^"]*)(doc\|pdf\|xls\|gif\|jpg\|ppt\|txt)"|href="../files/\1\2"|g' *.htm*
perl -pi.bak -e's|href="(?!http:)([^"]*)(doc\|pdf\|xls\|gif\|jpg\|ppt\|txt)"|href="../files/\1\2"|g' *.htm*

regex replace to stdout
perl -p -e's|href="(?!http:)([^"]*)(doc\|pdf\|xls\|gif\|jpg\|ppt\|txt)"|href="../files/\1\2"|g' *.htm*

use perl regex like grep (e.g. for unicode chars)
# http://www.regular-expressions.info/unicode.html
perl -wnE'say for /.*\p{Mark}.*/g' *.html
