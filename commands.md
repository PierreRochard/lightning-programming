
1. `wget https://github.com/lightningnetwork/lnd/releases/download/v0.6.1-beta/lnd-linux-amd64-v0.6.1-beta.tar.gz`

2. `tar -C ~/ -xzf lnd-linux-amd64-v0.6.1-beta.tar.gz`

3. `cd lnd-linux-amd64-v0.6.1-beta`

4. `./lnd --bitcoin.active --bitcoin.testnet --debuglevel=info --bitcoin.node=neutrino --neutrino.connect=faucet.lightning.community`

5. Open a new terminal tab

6. `cd lnd-linux-amd64-v0.6.1-beta`

7. `./lncli create`

8. Enter a password, this is for testnet coins, so you can use an insecure password, 8 character minimum

9. `pip install lnd-grpc`

To start over:

1. Open a new terminal tab

2. `cd lnd-linux-amd64-v0.6.1-beta`

3. `./lnd --bitcoin.active --bitcoin.testnet --debuglevel=info --bitcoin.node=neutrino --neutrino.connect=faucet.lightning.community`

4. Open a new terminal tab

5. `./lncli unlock`

6. Enter your password and hit enter
