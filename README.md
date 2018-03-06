# docker test case

This is merely a docker test case, will likely be removed somewhere in the future.

## Easy setup

1. Run `./build.sh` with your tags, eg `sudo ./build.sh ruiseabra/wordpress`. **If you use something different from ruiseabra/wordpress as tags, remember to change blog/docker-compose.yaml or it will download my image from docker hub.**
1. (OPTIONAL) Define your own values for blog/etc/secrets-db (admin root, db name, db user and db user password)
1. Run `./setup.sh`

You will end up with a brand new blog waiting to be initialized.

# Project Directories
## wordpress/

This Dockerfile is for building a wordpress ready image based off an official Apache and PHP 7.1 image.

One can build it by adapting the tag in the following example command `sudo docker build -t ruiseabra/wordpress .`

## blog/

The blog area. `blog/etc/` is for configuration files, and `blog/files` is for volumes.

Just run `sudo docker-compose up -d` to have your blog up and running.

One can restart the containers by running the following commands:
* `sudo docker stop blog_db_1 blog_w1_1 blog_w2_1 blog_lb_1`
* `sudo docker start blog_db_1 blog_w1_1 blog_w2_1 blog_lb_1`
