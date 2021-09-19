#!/bin/bash

echo "
Developed by KingNNT 

Author's informations:
	- Email: Dev.KingNNT@gmail.com
	- Skype: live:king.nnt
	- Zalo: [KingNNT](https://zalo.me/KingNNT)
	- Facebook Profile: https://www.facebook.com/Kinggg.NNT
	- Facebook Page: https://www.facebook.com/Dev.KingNNT
	- Github Profile: https://github.com/KingNNT
	- Gitlap Profile: https://gitlab.com/Dev.KingNNT
	- Bitbucket Profile: https://bitbucket.org/KingNNT/
"

chmod -R 777 ./src
cp ./.env.production ./.env
cp ./src/.env.production ./src/.env
make up
make artisan-key-generate
make npm-run-production
make optimize
