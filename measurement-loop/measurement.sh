#!/bin/bash

INPUT_FILE="your_input_file.txt"

# 元のスクリプトの実行時間計測
start=$(date +%s.%N)
test="a"

result=""

while read line; do
  # 行を変数に追加
  result+="$line "
done < $INPUT_FILE

end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc)

echo "Runtime for while loop: $runtime seconds"

# awkスクリプトの実行時間計測
start=$(date +%s.%N)

result=$(awk '{printf "%s ", $0}' $INPUT_FILE)


end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc)

echo "Runtime for awk: $runtime seconds"
