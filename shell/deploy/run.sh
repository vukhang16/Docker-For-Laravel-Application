#!/bin/bash

chmod -R 777 ./src
cp ./src/.env.production ./src/.env

echo ""
echo "==> Starting Docker"
echo ""
make compose-up-d
echo ""
echo "==> Cleaning Storage"
echo ""
make npm-clean-storage
echo ""
echo "==> Installing node_module with npm"
echo ""
make npm-install
echo ""
echo "==> Installing vendor folder with composer"
echo ""
make composer-install-production-mode
echo ""
echo "==> Creating storage link to public folder"
echo ""
make artisan-storage-link
echo ""
echo "==> Generating key for project"
echo ""
make artisan-key-generate
echo ""
echo "==> Building production"
echo ""
make npm-run-production
echo ""
echo "==> Clearing cache and optimize"
echo ""
make artisan-cache
make optimize
echo ""
echo "==> Refresh database and add data with seeder"
echo ""
make db-refresh

echo ""
echo "==> Changing mode folder"
echo ""
chmod -R 755 ./src
chmod -R 777 ./src/storage

echo ""
echo "==> Done"
echo ""
