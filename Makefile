# Makefile for deploying aaronbieber.com.

OPTS=-rovWz
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
DEST=airborne@aaronbieber.com:/var/www/aaronbieber.com/htdocs/

build:
	hugo --cleanDestinationDir

deploy: build
	rsync $(OPTS) $(EXCLUDE) ./public/ $(DEST)
