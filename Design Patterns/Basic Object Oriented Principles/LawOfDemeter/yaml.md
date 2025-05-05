# 🚧 Less Preferred Approach (Breaks Law of Demeter)
## Here’s a beginner-friendly DevOps example: you're checking the health status of a Docker container.

``` bash
status=$(docker inspect my_container | jq -r '.[0].State.Health.Status')
echo "Service status: $status"

```

This works — no doubt about it. But you’re drilling through the entire Docker object structure just to get one little piece. It's like opening five nested boxes just to grab a cookie. If the internal structure changes (or someone renames something), your script might break.


# ✅ More Preferred Approach (Respects Law of Demeter)

``` bash
# Define a simple wrapper
get_container_health_status() {
  docker inspect --format='{{.State.Health.Status}}' my_container
}

# Use the abstraction
status=$(get_container_health_status)
echo "Service status: $status"
```

Now, you’re treating docker like a reliable neighbor, you ask for what you need, and it gives you the answer. No snooping. No assumptions about internal structure.