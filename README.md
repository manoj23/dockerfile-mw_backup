dockerfile-mw_backup
======================

This is a simple alpine container which embeds the `mw_backup` script that
dumps the mediawiki database periodiocally.

mw_backup.sh is fetched directly from https://github.com/manoj23/mw_backup.

## Example of docker run

```
docker build https://github.com:/manoj23/dockerfile-mw_backup.git -t mw_backup
docker run --rm -ti
	-e "MW_ROOT=/opt/mw_to_back_up"
	-e "MW_BACKUP_OUTPUT=/opt/mw_backup/"
	-e "PERIOD_HOUR=24"
	-v /path/to/mw_to_back_up:/opt/mw_to_back_up
	-v /path/to/mw_backup:/opt/mw_backup/
	-v $HOME/.gitconfig:/root/.gitconfig
	--name mw_backup mw_backup
```

## Example of docker-compose.yml

Put in a folder:
* docker-compose.yml as below

```
version: '3'
services:
  mw_backup:
    build: https://github.com:/manoj23/dockerfile-mw_backup.git
    environment:
      - MW_ROOT=/opt/mw_to_back_up
      - MW_BACKUP_OUTPUT=/opt/mw_backup/
      - PERIOD_HOUR=24
    volumes:
      - /path/to/mw_to_back_up:/opt/mw_to_back_up
      - /path/to/mw_backup:/opt/mw_backup/
      - $HOME/.gitconfig:/root/.gitconfig
```
