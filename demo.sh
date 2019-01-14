#! /usr/bin/env bash
docker-compose start ssh-agent
docker-compose exec ssh-agent ssh-add /.ssh/id_rsa
docker-compose run service
