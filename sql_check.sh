# check all sql files under sqls directory if no arguments
if [ $# -eq 0 ]; then
  files=($(ls -d sqls/**/*.sql))
else
  files=($*)
fi

result=0

for file in ${files[@]}; do
  # skip non existing file
  if [ ! -f $file ]; then
    continue
  fi

  # show the failure in stdout
  skip=1
  out=$(sqlfluff parse --dialect mysql $file)

  # go to next file if parsing is succeeded
  if [ $? -eq 0 ]; then
    continue;
  fi

  # set result code = 1 if sqlfluff was failure
  result=1

  echo "$out" | while read line
  do
    # suppress warning result
    if [ "$line" == "==== parsing violations ====" ]; then
      skip=0
      echo $file
    fi

    # suppress warining
    if [ "${line:0:8}" == "WARNING:" ]; then
      continue
    fi

    if [ $skip -eq 0 ]; then
      echo "    $line"
    fi
  done
done

exit $result
