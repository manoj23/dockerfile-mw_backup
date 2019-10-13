#!/bin/sh

. /usr/local/bin/mw_backup.sh

[ -z "$MW_ROOT" ] && echo "MW_ROOT is not defined" && exit 1
[ -z "$MW_BACKUP_OUTPUT" ] && echo "MW_BACKUP_OUTPUT" && exit 2

mw_backup "$MW_ROOT" "$MW_BACKUP_OUTPUT"
