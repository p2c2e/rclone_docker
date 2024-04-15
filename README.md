If building from a MacBook M1 M2 M3 etc. (arm64), use the following to build and then push

```
docker build .  --platform=linux/amd64 -t rclone -t sudhan/rclone
```
