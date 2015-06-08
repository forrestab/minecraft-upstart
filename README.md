# Upstart config for minecraft servers

A simple Upstart config that handles starting and stopping a vanilla minecraft server. This script will also start the minecraft server on os start.

## Requirements

Upstart 1.5 (Ubuntu)

## Setup

* Make sure to create a minecraft user

```sh
sudo adduser --system --no-create-home --home /home/minecraft minecraft
sudo addgroup --system minecraft
# Add the new user to the new group
sudo adduser minecraft minecraft
```

* Make sure you have your group.user own the directory

```sh
sudo chown -R minecraft.minecraft /home/minecraft
```

* Copy (move) `minecraft.conf` to `/etc/init/`
* Edit the variables under the `Default` and `Variables` sections to your needs
* Reload init to pick up the new conf

```sh
sudo initctl reload-configuration
```

## Usage

You can start, stop and check the status of the service by using the following commands,

```sh
sudo service minecraft start/stop/status
# or
sudo start/stop minecraft
```
