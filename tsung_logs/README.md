# Test Configuration

## Beanstalk Configuration

```sh
eb create \
  --envvars SECRET_KEY_BASE=BADSECRET \
  -db.engine postgres \
  -db.i db.t3.medium \
  -db.user u \
  -i t3a.medium \
  --single smaller
```

## Tsung Configuration

```sh
launch_tsung.sh m5a.large
```
