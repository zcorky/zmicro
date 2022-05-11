# Inquirer

## Example (不推荐，请使用 Example 3 替代)

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

### Example 3

```bash
# text
os::inquirer value "text" "请输入 ？"
os::inquirer value "text" "请输入 ？" "默认值"
os::inquirer value "text" "请输入 ？" false # not required
os::inquirer value "text" "请输入 ？" true # required, default required

# confirm / yes
os::inquirer value "confirm" "是否确认 ？" # true or false

# select / radio
choices=(a b c)
os::inquirer value "select" choices "请选择一个服务？"
```
