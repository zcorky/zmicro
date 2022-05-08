# Inquirer

## Example

```bash
# text
inquirer::text "请输入 whoami:" value
echo "whomami: $value"

# select
local choices=(
    "Yes"
    "No"
)
inquirer::select "Yes or No ?" choices value
echo "Yes or No: $value"
```

## Example V2 - Service Config

```bash
# service-remotedev => check
config::check_or_set SERVICE_REMOTEDEV_COMPANY text $SERVICE_CONFIG
# config::check_or_set SERVICE_REMOTEDEV_SOURCE_CODE_DIR text $SERVICE_CONFIG
config::check_or_set SERVICE_REMOTEDEV_GIT_USER text $SERVICE_CONFIG
config::check_or_set SERVICE_REMOTEDEV_GIT_EMAIL text $SERVICE_CONFIG
config::check_or_set SERVICE_REMOTEDEV_SSH_PORT text $SERVICE_CONFIG
config::check_or_set SERVICE_REMOTEDEV_PREVILEGED yesno $SERVICE_CONFIG
```
