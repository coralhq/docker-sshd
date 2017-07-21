# docker-sshd

Passwordless SSH daemon Docker image using GitHub public keys for auth

## sample run

```sh
docker run -d --name=sshd \
  -e GITHUB_USERS="akhy sabrinathebot" \
  -p 2222:22 \
  coralteam/sshd:base
```

The startup script will automatically download `akhy` and `sabrinathebot`'s public keys from GitHub and add them to `$HOME/.ssh/authorized_keys`. Now you can login without password using your private key.

```sh
ssh -p 2222 root@localhost
```

## image variants

- `base`: base image based on `debian:jessie`
- `http-debug`: contains wget, curl, and httpie among other things
- ... more to come
