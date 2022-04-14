#bin/bash

#Header
Head1='How to use'
Head2='Error / Warning'
Head3='SYNOPSIS'
Head4='PARAMETER'
Head5='DESCRIPTION'
Head6='RETURN VALUES'
CR='Copyright'

#variables    useless things
val1='int'
val2='char'
val3='size_t'
val4='sizeof'

#Color
Def='\033[0m'             # 기본으로 초기화
Warning='\033[1;31m'      # 빨간색 굵은 글씨
Warn_Head='\033[0;36m'    # 하늘색 글씨
Head='\033[1;92m'         # 초록색 굵은 글씨
USE='\033[1;93m'          # 노란색 굵은 글씨
Code='\033[0:96m'         # 형광색 글씨

i=1

cd ~/.dam/libft_kor

read name

while read line || [ -n "$line" ] ;
do
	if [[ "$i" = 1 ]] ; then
		echo "$Head$line$Def"
	elif [[ "$i" = 3 ]] ; then
		echo "$Code$line$Def"
	elif [[ "$line" == "$Head1" ]] || [[ "$line" == "$Head3" ]] || [[ "$line" == "$Head4" ]] \
		|| [[ "$line" == "$Head5" ]] || [[ "$line" == "$Head6" ]]; then
		echo "$USE$line$Def"
	elif [[ "$line" == "$Head2" ]] ; then
		echo "$Warning$line$Def"
	else
		echo "\t$line"
	fi

	i=$((i + 1))

done < $name

echo "\n$USE$CR$Def"
echo "\tsesim\t\tsesim@student.42seoul.kr\n"
