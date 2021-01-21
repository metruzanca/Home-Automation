import axios from 'axios'
import { promisify } from 'util';
import child from 'child_process'
import dotenv from 'dotenv'
dotenv.config()

const exec = promisify(child.exec);

const webhook = `https://discord.com/api/webhooks/801906354070487071/${process.env.WEBHOOK_TOKEN}`

async function main() {
  const { stdout: ip } = await exec("ifconfig | grep '192.168.'");
  const { stdout: hostname } = await exec("hostname -s");

  try {
    await axios.post(webhook,{
      username: hostname,
      content:`I just rebooted! heres my IP:\n${ip.trim()}`,
    })
  } catch (error) {
    console.error(error);
  }
  
};

main();