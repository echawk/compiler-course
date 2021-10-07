#!/bin/sh

set -f #disable globbing

cat "$1" | tr ' ' '\n' | while read LINE
do
	case $LINE in
		[0-9]*) printf "INT:";;
		*)      printf "OP:";;
	esac
	printf "%s\n" "$LINE"
done |
	while read TOK_LINE
	do
		case ${TOK_LINE%:*} in
			INT) printf "PUSH:" ;;
			OP)
				case ${TOK_LINE#*:} in
					'+') printf "ADD:";;
					'-') printf "SUB:";;
					'*') printf "MUL:";;
					'/') printf "DIV:";;
				esac
				;;
			*);;
		esac
		printf "%s\n" "${TOK_LINE#*:}"
	done

