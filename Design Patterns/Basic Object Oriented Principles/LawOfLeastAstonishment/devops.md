# ❌ Not Preferred (Violates Least Astonishment)

```bash

#!/bin/bash

# Script says it will display environment but silently overrides PATH

echo "Displaying environment variables..."
PATH="/custom/bin"  # Overwrites user's PATH without warning
env

```

## Why it's surprising:
### The script claims it’s just going to show environment variables, but it quietly replaces PATH, possibly breaking things down the line. That’s unexpected and risky.

# ✅ Preferred (Follows Least Astonishment)
``` bash
#!/bin/bash

# Clearly sets a temporary PATH for the script only

echo "Displaying environment variables..."
TEMP_PATH="/custom/bin:$PATH"
env PATH="$TEMP_PATH"

```
## Why this is better:
### This version explicitly shows it’s using a temporary PATH and doesn’t overwrite the global one. It behaves in a transparent, safe, and expected way. 