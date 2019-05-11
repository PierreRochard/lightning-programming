
1. `wget https://github.com/lightningnetwork/lnd/releases/download/v0.6.1-beta/lnd-linux-amd64-v0.6.1-beta.tar.gz`

2. `tar -C ~/ -xzf lnd-linux-amd64-v0.6.1-beta.tar.gz`

3. `cd lnd-linux-amd64-v0.6.1-beta`

4. `./lnd --bitcoin.active --bitcoin.testnet --debuglevel=info --bitcoin.node=neutrino --neutrino.connect=faucet.lightning.community`

5. `./lncli create`