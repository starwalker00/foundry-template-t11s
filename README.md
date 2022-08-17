# commands

## deploy with a script

https://book.getfoundry.sh/reference/forge/forge-script

```
forge script script/Counter.s.sol:MyScript --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast -vvvv
```

# foundry-template

Streamlined template for getting started with Foundry and Solmate.

## Contributing

You will need a copy of [Foundry](https://github.com/foundry-rs/foundry) installed before proceeding. See the [installation guide](https://github.com/foundry-rs/foundry#installation) for details.

### Setup

```sh
git clone https://github.com/transmissions11/foundry-template.git
cd foundry-template
```

### Run Tests

```sh
forge test
```

### Update Gas Snapshots

```sh
forge snapshot
```
