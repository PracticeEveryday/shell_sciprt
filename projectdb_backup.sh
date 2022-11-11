#!/bin/bash

mysqldump -u root -p --add-drop-table --set-charset --default-character-set=utf8 project > db_project_backupfile.sql

echo "backup done"
