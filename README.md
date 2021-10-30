# Usage

```yaml
kind: pipeline
name: deploy

steps:
  - name: unlock-secrets
    image: 2martens/drone-git-crypt
    pull: always
    environment:
      MODE: unlock
      GIT_CRYPT_KEY:
        from_secret: git-crypt-key
  - name: lock-secrets
    image: 2martens/drone-git-crypt
    pull: always
    environment:
      MODE: lock
      GIT_CRYPT_KEY:
        from_secret: git-crypt-key
```

