################################################################################
# number conversions: hex dec bin 2 hex dec bin
################################################################################


alias dec2bin='f() {echo "obase=2; $1"|bc};f'
alias dec2hex='f() {echo "obase=16; $1"|bc};f'
alias hex2bin='f() {foo=`echo $1 | tr "[:lower:]" "[:upper:]"`; echo "ibase=16;obase=2; $foo"|bc};f'
alias hex2dec='f() {foo=`echo $1 | tr "[:lower:]" "[:upper:]"`; echo "ibase=16; $foo"|bc};f'
alias bin2dec='f() {echo "ibase=2; $1"|bc};f'
alias bin2hex='f() {echo "obase=16;ibase=2; $1"|bc};f'

