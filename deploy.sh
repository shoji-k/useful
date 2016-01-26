#!/bin/sh
rsync -C --exclude="/sql" --exclude="/*.sh" --exclude="/composer*" --filter=":- .gitignore" -rltuvz ./ sample_ssh_host:~/www/
