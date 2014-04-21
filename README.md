# miner-cookbook

Handle the configuration of mining software for mining cryptocurrencies, actually supporting only cpuminer (scrypt).

## Supported Platforms

* Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['miner']['url']</tt></td>
    <td>String</td>
    <td>The URL of the pool</td>
    <td><tt>stratum+tcp://stratum2.dogechain.info:3333</tt></td>
  </tr>
    <tr>
    <td><tt>['miner']['user']</tt></td>
    <td>String</td>
    <td>Your username</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['miner']['password']</tt></td>
    <td>String</td>
    <td>Your password</td>
    <td><tt></tt></td>
  </tr>
</table>

## Usage

### miner::cpuminer

Include `miner::cpuminer` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[miner::cpuminer]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Giovanni Toraldo (me@gionn.net)
