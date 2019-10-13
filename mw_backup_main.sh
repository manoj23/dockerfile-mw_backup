#!/bin/sh

. /usr/local/bin/mw_backup.sh

[ -z "$MW_ROOT" ] && echo "MW_ROOT is not defined" && exit 1
[ -z "$MW_BACKUP_OUTPUT" ] && echo "MW_BACKUP_OUTPUT is not defined" && exit 2
[ -z "$PERIOD_HOUR" ] && echo "PERIOD_HOUR is not defined" && exit 3

while :; do
	mw_backup "$MW_ROOT" "$MW_BACKUP_OUTPUT"
	sleep $(($PERIOD_HOUR * 60 * 60))
done
