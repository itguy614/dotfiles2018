#!/bin/sh

brew install mariadb

brew services start mariadb

mysqladmin --user=root password "password"