genpasswd() {
  local chars=$1
  [[ "$chars" == "" ]] && chars=15
  echo "Generate password with $chars characters"
  tr -dc A-Za-z0-9_\$\%\&\*\? < /dev/urandom | head -c ${chars} | xargs
}
