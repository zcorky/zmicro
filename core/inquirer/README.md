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