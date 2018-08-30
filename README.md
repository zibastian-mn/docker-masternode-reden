Introduction
---
This image is running a REDEN masternode

**GitHub:** https://github.com/zibastian-mn/docker-masternode-reden/  
**Docker:** https://hub.docker.com/r/zibastian/masternode-reden/  

---
Starting a node
---
```sh
docker run -d --restart=unless-stopped \
               -e node_key=<PrivateKey> \
               -e external_ip=<A.B.C.D> \
               -v reden:/opt/reden -p 13058:13058 \
               zibastian/masternode-reden
```

---
Monitoring
---
```sh
docker run <CONTAINER_NAME> nodemon
```

---
Uninstall
---
```sh
docker rm -f <CONTAINER_NAME> && docker volume rm reden
```
---
Container logs
---
```bash
docker logs -f <CONTAINER_NAME> [--tail 20]
```

---
Donation
---
If this image helps you reduce time to deploy, I like beer :) 

**SMART:** SVu4CZ8ufyv8zovqZe418mWUcjefJzpzVi  
**EGEM:** 0x720752E61664a1B81B2ec9F7E709D0bCDB55502f  
**ETH:** 0x13B0E1c351e4a9Eae4980ae5469022808C8B3B6D  
**LTC:** MBiWJ3HB69nXtfxvdFmZE5iGm5AXWPRZuh  
**BTC:** 3NshfttcuYKNrU8CCwFqzuu8x95VtGQeu4  
