#!/bin/sh
rsync -C --exclude="/sql" --exclude="/*.sh" --exclude="/composer*" --exclude=".gitignore" --filter=":- .gitignore" -rltuvz ./ sample_ssh_host:~/www/
