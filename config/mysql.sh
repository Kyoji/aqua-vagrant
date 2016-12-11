#!/usr/bin/env bash

mysql -uroot -e "drop database if exists aqua"
mysql -uroot -e "create database aqua"
mysql -uroot aqua < /srv/database/default/aqua_default.sql