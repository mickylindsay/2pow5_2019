#!/usr/bin/env ruby

# cerner_2^5_2019
# Outputs json of docker container statuses based on names in DOCKER_WHITELIST

require 'json'

DOCKER_WHITELIST = %w(container_one container_two)

statuses = `docker ps --format '{{.Names}} {{.Status}}'`
puts statuses.chomp.split("\n").map { |status|
  split = status.split(' ')
  name = split.first
  desc = split[1..-1].join(' ')
  {name: name, status: desc.include?('Up'), uptime: desc } if DOCKER_WHITELIST.include? name
}.compact.to_json
