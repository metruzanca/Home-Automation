// Canonical Source https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl

# Compose on the Raspberry Pi in 5 Simple Steps

> Rohan Sawant Oct 12, 2019 - Updated on Jul 5, 2020 - 1 min read

You know what Docker is. You know what a Raspberry Pi is. Let me make sure they hit it off together. 😎🤝🏽

This is probably one of the quickest and easiest ways to get Docker and Docker Compose running on the Raspberry Pi.
(Tested with Raspberry Pi B+ Rev 1.2 and Raspberry Pi 4)

After searching the Inter-Webs for hours and having several things not work for me, I decided something needed to be done about it.

## Steps

### 1. Install Docker

```
curl -sSL https://get.docker.com | sh
```

### 2. Add permission to Pi User to run Docker Commands

```
sudo usermod -aG docker pi
```

Reboot here or run the next commands with a sudo

### 3. Test Docker installation

```
docker run hello-world
```

### 4. IMPORTANT! Install proper dependencies

```
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser
```

### 5. Install Docker Compose

```
sudo pip3 -v install docker-compose
```

## Boom! 🔥 It's done!

> Important Notice about Docker on the Raspberry Pi
> <br><br>
> Raspberry Pis use the ARM architecture, and as a result, won't be compatible with all containers out of the box. Images will need to be built from an ARM base image. But, most of these images can easily be found on Docker Hub
