# Makefile for deploying aaronbieber.com.

OPTS=-rlptdv
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
DEST=airborne@aaronbieber.com:/var/www/aaronbieber.com/htdocs/

deploy:
	rsync $(OPTS) $(EXCLUDE) ./public/ $(DEST)
