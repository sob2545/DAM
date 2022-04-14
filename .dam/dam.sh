#bin/bash

#Header
Head1='How to use'
Head2='Error / Warning'
Head3='SYNOPSIS'
Head4='PARAMETER'
Head5='DESCRIPTION'
Head6='RETURN VALUES'
CR='Copyright'

#Color
Def='\033[0m'             # 기본으로 초기화
Warning='\033[1;31m'      # 빨간색 굵은 글씨
Warn_Head='\033[0;36m'    # 하늘색 글씨
Head='\033[1;92m'         # 초록색 굵은 글씨
USE='\033[1;93m'          # 노란색 굵은 글씨
Code='\033[0:96m'         # 형광색 글씨


# 원하는 색상이 있을 경우 사용 아래 색상을 변경하여 사용할 것
#Def='\033[0m'             # 기본 색상
#RED='\033[0;31m'          # 빨간색
#GREEN='\032[0;32m'        # 초록색
#YELLOW='\033[0;33m'       # 노란색
#BLUE='\033[0;34m'         # 파란색
#PURPELE='\033[0;35m'      # 보라색
#CYAN='\033[0;90m'         # 하늘색
#B_RED='\033[0;91m'        # 연빨간색
#B_GREEN='\033[0;92m'      # 연녹색
#B_YELLOW='\033[0;93m'     # 연노란색
#B_BLUE='\033[0;94m'       # 연파란색
#B_PURPLE='\033[0;95m'     # 연보라색
#Fluorescent='\033[0;96m'  # 형광색

# 글씨 속성 편집 방법
# -> '[' 뒤의 숫자를 통해 변경 가능
# [0; = 기본
# [1; = 굵은 글씨
# [4; = 글씨 밑줄
# [5; = 글씨 깜빡임


i=1

cd ~/.dam/libft_kor

read name

while read line || [ -n "$line" ] ;
do
	if [[ "$i" = 1 ]] ; then
		echo "$Head$line$Def"
	elif [[ "$i" = 3 ]] ; then
		echo "\t$Code$line$Def"
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
