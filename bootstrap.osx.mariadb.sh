#!/bin/sh

brew install mariadb

brew services start mariadb
sleep 5s
mysqladmin --user=root password "password"
