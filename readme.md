# Home-Automation

This repo is just the start of my personal home automation. Currently all thats in here is a service that runs on boot and sends a discord message via webhook comunicating system information such as lan IP. (_My router doesn't let me set fixed IPs :(_ )

I will probably turn this into a mono repo with a bunch of `<name>-service/` directories and onBoot will be one of them.

## Setup / Installation

### 1. Clone and Give yourself Permissions

Clone this repository to `/opt/` (needs to be in opt as paths in .service files assume `/opt/home-automation/`) and give your user Read/Write access with the following command so we can run npm and node inside with our user.

```
cd /opt/
git clone git@github.com:metruzanca/Home-Automation.git
sudo chown -R $USER:$USER /opt/home-automation
cd home-automation
```

### 2. Install npm packages

If you don't have nodejs installed, I'd recommend using [nvm](https://github.com/nvm-sh/nvm)

This project was made using 14.15 if there are any issues, use `nvm install 14 && nvm use 14`

```
npm ci
```

### 3. Enviroment Variables

Copy the `.env.example` file to `.env` and fill in the discord webhook channelID and token.

```
cp .env.example .env
```

### 4. Run the boot:setup script

This will copy the systemd `.service` file to where it needs to be.

```
npm run boot:setup
```

### 5. Setup the Service with Systemd

> If you want to test everything first, you can run this
>
> ```
> systemctl start node-onBoot
> ```

```
sudo systemctl enable node-onBoot
```

### 6. Reboot

Sit back hope you get a discord message.

Based on a combination of these two posts:

- [oneshot systemd service](https://gist.github.com/drmalex07/d006f12914b21198ee43)
- [How do I run a single command at startup using systemd?](https://askubuntu.com/questions/919054/how-do-i-run-a-single-command-at-startup-using-systemd)

> _Wish I found the second link first..._
