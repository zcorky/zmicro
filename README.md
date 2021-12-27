# Zero's Service Manager

zmicro is a linux service manager, designed to manage linux packages and services easily.


## Install

```bash
# CURL
curl -o- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash

# WGET
wget -qO- https://raw.githubusercontent.com/zcorky/zmicro/master/install | bash
```

Using `snap`:

```bash
sudo snap install --beta --devmode zmicro
```

Using `home brew`:

```bash
brew tap zcorky/zmicro
brew install zmicro
```

## Update

```bash
zmicro update
```

## License

See [LICENSE](./LICENSE)