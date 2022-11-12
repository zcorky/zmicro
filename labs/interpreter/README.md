# As a interpreter

## How to

```bash
$ zmicro helloworld.sh
```

or

```bash
#!/usr/local/bin/zmicro

log::info "[$(timestamp)] hello world"
```

or

```bash
#!/bin/env zmicro

log::info "[$(timestamp)] hello world"
```
