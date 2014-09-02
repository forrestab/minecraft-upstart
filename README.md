# Upstart config for minecraft servers

A simple Upstart config that handles starting and stopping a vanilla minecraft server.

## Requirements

Upstart 1.5 (Ubuntu)

## Setup

1. Copy minecraft.conf to ```/etc/init/```
2. Edit the variables under the Default and Variables sections to your needs.

## Usage

You can start, stop and check the status of the service by using the following commands,

```
service minecraft start
service minecraft stop
service minecraft status
```
